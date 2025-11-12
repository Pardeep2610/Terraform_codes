resource "azurerm_resource_group" "davrg"{
    for_each=var.rgs
    name=each.value.name
    location=each.value.location
    managed_by=each.value.location
    tags=each.value.tags
}

