terraform {
    required_providers{
        azurerm={
            source="hashicorp/azurerm"
            version="4.47.0"
        }
    }
}

provider "azurerm"{
    features{}
    subscription_id="8aa8fdf9-4e23-46ad-8d03-052835045b81"
}