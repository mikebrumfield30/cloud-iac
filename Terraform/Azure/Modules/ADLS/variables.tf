variable "resource_group_name" {
  description = "Name of the resource group to place the resources in"
  type        = string
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

variable "location" {
  description = "Location of the storage account"
  type        = string
  default     = "centralus"
}