terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
  backend "azurerm" {
     resource_group_name  = "rg-001"
     storage_account_name = "test32971"
     container_name       = "developement"
     key                  = ""
     }
}

provider "azurerm" {
  features {}
  subscription_id = "2f58bc69-5c25-4e57-96df-4f99e2da2be7"
}

# terraform {
#   required_providers {
#     azurerm = {
#       source = "hashicorp/azurerm"
#       version = "4.41.0"
#     }
#   }
#   backend "azurerm" {
#      resource_group_name  = "rg-001"
#      storage_account_name = "test32971"
#      container_name       = "developement"
#      key                  = ""
#      }
# }

# provider "azurerm" {
#   features {}
#   subscription_id = "2f58bc69-5c25-4e57-96df-4f99e2da2be7"
# }