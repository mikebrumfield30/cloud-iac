resource "azurerm_synapse_workspace" "my_workspace" {
  name                                 = var.workspace_name
  resource_group_name                  = var.resource_group_name
  location                             = var.location
  storage_data_lake_gen2_filesystem_id = var.adls_id
  sql_administrator_login              = var.sql_admin_username
  sql_administrator_login_password     = var.sql_admin_password

  identity {
    type = "SystemAssigned"
  }
}

# Firewall to enable network access to the workspace from everywhere
resource "azurerm_synapse_firewall_rule" "example" {
  # name                 = "AllowAll"
  name = azurerm_synapse_workspace.my_workspace.identity.principal_id
  synapse_workspace_id = azurerm_synapse_workspace.my_workspace.id
  start_ip_address     = "0.0.0.0"
  end_ip_address       = "255.255.255.255"
}
