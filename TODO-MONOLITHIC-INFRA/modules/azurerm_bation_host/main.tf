data "azurerm_subnet" "subnet_id" {
  for_each             = var.bation
  name                 = each.value.subnet
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_public_ip" "publicip" {
  for_each            = var.bation
  name                = each.value.public_name
  resource_group_name = each.value.resource_group_name
}

resource "azurerm_bastion_host" "bation" {
  for_each            = var.bation
  name                = each.value.bation_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = data.azurerm_subnet.subnet_id[each.key].id
    public_ip_address_id = data.azurerm_public_ip.publicip[each.key].id
  }
}