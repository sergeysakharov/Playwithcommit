
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.72.0"
    }
  }
}

provider "azurerm" {
  tenant_id       = "17e32440-c4c6-487c-a361-41272e6db574"
  subscription_id = "8849218e-7382-42ab-9434-352bfc1e1c68"
  client_id       = "750d8ec5-2538-4168-8dba-d6665886ebf4"
  client_secret   = "TEIpitVAVLI_CcjAA2yyVZWy-MmUw8lb_1"
  features {}
}




resource "azurerm_resource_group" "az_fd_prod" {
    location = "West Europe"
    name     = "az-fd-prod1"
    tags     = {
        "Environment" = "Production"
        "Owner"       = "DevOps"
        "Resource"    = "Managed by Terraform"
        "b2b-role"    = "frontdoor-prod"
    }
}
