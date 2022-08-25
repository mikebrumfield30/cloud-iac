variable "resource_group_name" {
  description = "Name of the resource group to place the resources in"
  type        = string
  default     = "rg-synapse"
}

variable "location" {
  description = "Location of the Resource Group"
  type        = string
  default     = "centralus"
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
}

variable "filesystem_name" {
  description = "Name of the container for the filesystem"
  type        = string
  default     = "myfs"
}

variable "workspace_name" {
  description = "Name of the Synapse workspace"
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

