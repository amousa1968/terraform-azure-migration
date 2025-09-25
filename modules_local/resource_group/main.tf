# Mock resource group for local testing
resource "null_resource" "mock_rg" {
  triggers = {
    name     = var.resource_group_name
    location = var.location
  }
}
