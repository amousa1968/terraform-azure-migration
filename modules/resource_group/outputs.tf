output "resource_group_name" {
  description = "Name of the resource group"
  value       = var.local_testing ? var.resource_group_name : azurerm_resource_group.rg[0].name
}

output "resource_group_location" {
  description = "Location of the resource group"
  value       = var.local_testing ? var.location : azurerm_resource_group.rg[0].location
}
