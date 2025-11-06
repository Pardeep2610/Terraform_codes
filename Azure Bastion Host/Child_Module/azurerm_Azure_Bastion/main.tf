data "azurerm_public_ip" "pip_id"{
    for_each=var.bation_host
    name=each.value.pip_name
  resource_group_name = each.value.rg_name

}


data "azurerm_subnet" "subnet_id"{
    for_each=var.bation_host
    name=each.value.subnet_name
  resource_group_name = each.value.rg_name
  virtual_network_name = each.value.vnet_name
  
}


resource "azurerm_bastion_host" "azurebastion" {
  for_each=var.bation_host
  name                = each.value.bation_name
  location            = each.value.location
  resource_group_name = each.value.rg_name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = data.azurerm_subnet.subnet_id[each.key].id
    public_ip_address_id = data.azurerm_public_ip.pip_id[each.key].id
  }
}