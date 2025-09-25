# Terraform Azure Migration Project

This project contains Terraform configurations for migrating resources to Azure.

## Prerequisites

- Terraform installed (version 1.0 or later)
- Azure CLI installed and authenticated
- An Azure subscription

## Setup

1. Clone or download this repository.
2. Navigate to the project directory:
   ```
   cd C:/Users/amousa/Documents/Chef/terraform/terraform-azure-migration
   ```
3. Initialize Terraform:
   ```
   terraform init
   ```
4. Review and modify variables in `terraform.tfvars` as needed.
5. Plan the deployment:
   ```
   terraform plan
   ```
6. Apply the configuration:
   ```
   terraform apply
   ```

## Files Description

- `main.tf`: Main Terraform configuration calling modules.
- `variables.tf`: Variable definitions for the configuration.
- `outputs.tf`: Output values from the Terraform deployment.
- `terraform.tfvars`: Variable values for the deployment.
- `modules/`: Directory containing submodules:
  - `resource_group/`: Module for creating the resource group.
  - `vnet/`: Module for creating the virtual network.
  - `subnet/`: Module for creating the subnet.

## Resources Created

- Resource Group
- Virtual Network
- Subnet

## Cleanup

To destroy the resources:
```
terraform destroy
