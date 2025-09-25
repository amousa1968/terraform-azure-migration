# Mock virtual network for local testing
resource "null_resource" "mock_vnet" {
  triggers = {
    name           = var.vnet_name
    location       = var.location
    resource_group = var.resource_group_name
    address_space  = join(",", var.vnet_address_space)
  }
}
