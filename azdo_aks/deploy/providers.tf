terraform {
  required_version = ">= 1.1.8"
  required_providers {
    azurerm = {
      version = "3.3.0"
    }
  }
  backend "azurerm" {
    storage_account_name = "__terraformstorageaccount__"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
