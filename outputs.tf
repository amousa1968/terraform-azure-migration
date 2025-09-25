output "resource_group_name" {
  description = "Name of the resource group"
  value       = module.resource_group.resource_group_name
}

output "resource_group_location" {
  description = "Location of the resource group"
  value       = module.resource_group.location
}

output "vnet_name" {
  description = "Name of the virtual network"
  value       = module.vnet.vnet_name
}

output "vnet_address_space" {
  description = "Address space of the virtual network"
  value       = module.vnet.vnet_address_space
}

output "subnet_name" {
  description = "Name of the subnet"
  value       = module.subnet.subnet_name
}

output "subnet_address_prefixes" {
  description = "Address prefixes of the subnet"
  value       = module.subnet.subnet_address_prefixes
}
