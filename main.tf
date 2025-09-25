terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

# Null provider for local testing
provider "null" {
  # No configuration needed
}

# Resource Group Module (local testing only)
module "resource_group" {
  source              = "./modules_local/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

# Virtual Network Module (local testing only)
module "vnet" {
  source              = "./modules_local/vnet"
  vnet_name           = var.vnet_name
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  vnet_address_space  = var.vnet_address_space
}

# Subnet Module (local testing only)
module "subnet" {
  source                     = "./modules_local/subnet"
  subnet_name                = var.subnet_name
  resource_group_name        = module.resource_group.resource_group_name
  vnet_name                  = module.vnet.vnet_name
  subnet_address_prefixes    = var.subnet_address_prefixes
}
