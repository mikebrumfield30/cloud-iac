output "principal_id" {
  value = azurerm_synapse_workspace.my_workspace.identity.principal_id
  description = "Principal Id of the Synapse Workspace"
}