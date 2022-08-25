resource "random_id" "guid" {
  keepers = {
    # Generate a new id each time we switch to a new Resource Group
    resource_group_name = var.resource_group_name
  }

  byte_length = 4
}

module "ResourceGroup" {
    source              = "../../Modules/ResourceGroup"
    resource_group_name = var.resource_group_name
    location            = var.location
}

module "AzureDataLakeStorage" {
    source = "../../Modules/ADLS"
    resource_group_name = module.ResourceGroup.resource_group_name
    storage_account_name = "${var.storage_account_name}-${random_id.server.hex}"
    location = var.location
}

# This module deploys a workspace that allows traffic from all IP's
module "SynapseWorkspace" {
  source = "../../Modules/SynapseWorkspace"
  resource_group_name = module.ResourceGroup.resource_group_name
  workspace_name = "${var.workspace_name}-${random_id.server.hex}"
  adls_id = module.AzureDataLakeStorage.id
  sql_admin_username = var.sql_admin_username
  sql_admin_password = var.sql_admin_password
  location = var.location
}

module "RoleAssignment" {
  source = "../../Modules/RoleAssignment"
  scope = Module.AzureDataLakeStorage.id
  principal_id = module.SynapseWorkspace.principal_id
}

