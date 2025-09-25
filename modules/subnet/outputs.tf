output "subnet_name" {
  description = "Name of the subnet"
  value       = var.local_testing ? var.subnet_name : azurerm_subnet.subnet[0].name
}

output "subnet_address_prefixes" {
  description = "Address prefixes of the subnet"
  value       = var.local_testing ? var.subnet_address_prefixes : azurerm_subnet.subnet[0].address_prefixes
}
