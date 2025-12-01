resource "azurerm_resource_group" "rgs" {
    for_each=var.rgtinku
    name=each.value.rg_name
    location=each.value.location
}