module "rg" {
  source = "../../Child_module/azurerm_resource_group"
  rgs    = var.rgs
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../../Child_module/azurerm_vnet"
  vnet       = var.vnet
}

module "snet" {
  depends_on = [module.rg, module.vnet]
  source     = "../../Child_module/azurerm_subnet"
  snet       = var.snet
}

module "pip" {
  depends_on = [module.rg, module.vnet, module.snet]
  source     = "../../Child_module/azurerm_public_ip"
  pip        = var.pip
}


module "vm" {
  depends_on      = [module.rg, module.vnet, module.snet]
  source          = "../../Child_module/azurerm_virtual_machine"
  virtual_machine = var.virtual_machine
}

module "sql_server"{
  depends_on = [ module.rg,module.vm ]
  source="../../Child_module/azurerm_sql_server"
  sql_server=var.sql_server
}

module "sql_database"{
  depends_on = [ module.rg,module.vm,module.sql_server ]
  source="../../Child_module/azurerm_sql_database"
  sql_database=var.sql_database
}