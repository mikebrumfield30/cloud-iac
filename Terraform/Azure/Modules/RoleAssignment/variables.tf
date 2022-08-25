variable "scope" {
  description = "Scope of the Role Permissions"
  type        = string
}

variable "principal_id" {
  description = "Role Definition Name"
  type        = string
}

variable "role_definition" {
  description = "Scope of the Role Permissions"
  type        = string
  default     = "Storage Blob Data Contributor"
  validation {
    condition = contains(["Storage Blob Data Contributor"], var.role_definition)
    error_message = "Valid value is one of the following: dev, prod."
  }
}