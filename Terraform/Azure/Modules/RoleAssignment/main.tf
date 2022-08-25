resource "azurerm_role_assignment" "example" {
  scope                = var.scope
  role_definition_name = var.role_definition
  principal_id         = var.principal_id
}   