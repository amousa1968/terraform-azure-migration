# Real Azure Virtual Network
resource "azurerm_virtual_network" "vnet" {
  count               = var.local_testing ? 0 : 1
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.vnet_address_space
}

# Mock Virtual Network for local testing
resource "null_resource" "mock_vnet" {
  count = var.local_testing ? 1 : 0

  provisioner "local-exec" {
    command = "echo 'Mock Virtual Network: ${var.vnet_name} with address space ${join(",", var.vnet_address_space)}'"
  }
}
