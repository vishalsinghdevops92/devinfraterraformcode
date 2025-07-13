terraform {
  backend "azurerm" {
    resource_group_name  = "rg_vishal"
    storage_account_name = "stgvishal"
    container_name       = "kashvee1"
    key                  = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.27.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "541f42e5-891d-4e2d-a650-086b66829d73"

}



resource "azurerm_resource_group" "chouhan" {
  name     = var.my_vishu1
  location = "West Europe"
}

resource "azurerm_storage_account" "rajpur1" {
  name                     = var.my_store_1
  resource_group_name      = azurerm_resource_group.chouhan.name
  location                 = azurerm_resource_group.chouhan.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}

 