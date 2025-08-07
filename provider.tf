terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.35.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
    }
  }
     backend "azurerm" {
     resource_group_name  = "rg-001"
     storage_account_name = "test8307532971"
     container_name       = "developement"
     key                  = "main.terraform.tfstate"
    }
}

provider "azurerm" {
  features {}
  subscription_id = "5fffa1ff-217c-45ea-ad98-83726d1375b9"
}

