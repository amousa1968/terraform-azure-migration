# Real Azure Resource Group
resource "azurerm_resource_group" "rg" {
  count    = var.local_testing ? 0 : 1
  name     = var.resource_group_name
  location = var.location
}

# Mock Resource Group for local testing
resource "null_resource" "mock_rg" {
  count = var.local_testing ? 1 : 0

  provisioner "local-exec" {
    command = "echo 'Mock Resource Group: ${var.resource_group_name} in ${var.location}'"
  }
}
