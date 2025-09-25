output "vnet_name" {
  description = "Name of the virtual network"
  value       = var.local_testing ? var.vnet_name : azurerm_virtual_network.vnet[0].name
}

output "vnet_address_space" {
  description = "Address space of the virtual network"
  value       = var.local_testing ? var.vnet_address_space : azurerm_virtual_network.vnet[0].address_space
}
