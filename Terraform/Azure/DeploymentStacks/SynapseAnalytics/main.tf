module "ResourceGroup" {
    source              = "../Modules/ResourceGroup"
    resource_group_name = var.resource_group_name
    location            = var.location
}

module "AzureDataLakeStorage" {
    source = "../Modules/ADLS"
    resource_group_name = module.ResourceGroup.resource_group_name
    storage_account_name = var.storage_account_name
    location = var.location
}