# Real Azure Subnet
resource "azurerm_subnet" "subnet" {
  count                = var.local_testing ? 0 : 1
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.subnet_address_prefixes
}

# Mock Subnet for local testing
resource "null_resource" "mock_subnet" {
  count = var.local_testing ? 1 : 0

  provisioner "local-exec" {
    command = "echo 'Mock Subnet: ${var.subnet_name} with address prefixes ${join(",", var.subnet_address_prefixes)}'"
  }
}
