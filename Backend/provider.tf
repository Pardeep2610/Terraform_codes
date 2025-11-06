terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.37.0"
    }

  }
  backend "azurerm"{
    resource_group_name="rg_pune"
    storage_account_name="punestg"
    container_name="pune-container"
    key = "tf.state"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "709e014e-7a63-438d-aacd-9a26332e0948"
}


resource "azurerm_resource_group" "rg_pune" {
  name     = "rg_pune"
  location = "East US"
}