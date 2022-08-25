variable "resource_group_name" {
  description = "Name of the resource group to place the resources in"
  type        = string
}

variable "workspace_name" {
  description = "Name of the Synapse workspace"
  type        = string
}

variable "adls_id" {
  description = "Id of the Azure Data Lake Storage"
  type        = string
}

variable "sql_admin_username" {
  description = "Username of the SQL admin"
  type        = string
}

variable "sql_admin_password" {
  description = "Password of the SQL admin"
  type        = string
  sensitive   = true
}

variable "location" {
  description = "Location of the storage account"
  type        = string
  default     = "centralus"
}