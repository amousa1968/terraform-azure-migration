# Mock subnet for local testing
resource "null_resource" "mock_subnet" {
  triggers = {
    name           = var.subnet_name
    resource_group = var.resource_group_name
    vnet_name      = var.vnet_name
    address_prefix = join(",", var.subnet_address_prefixes)
  }
}
