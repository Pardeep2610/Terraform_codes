module "rg" {
  source         = "../../Child_modules/azurerm_resource_group"
  rgs = var.rgs
}

module "stg"{
  depends_on=[module.rg]
  source="../../Child_modules/azurerm_storage_account"
  stg=var.stg
}

module "virtual_network"{
  depends_on = [ module.rg ]
  source="../../Child_modules/azurerm_networking"
vnet=var.vnet
}

module "pip"{
  depends_on = [ module.rg,module.virtual_network ]
  source="../../Child_modules/azurerm_public_ip"
  publicip=var.publicip
}