variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for resources"
  type        = string
}

variable "local_testing" {
  description = "Enable local testing mode (uses null resources instead of Azure)"
  type        = bool
  default     = false
}
