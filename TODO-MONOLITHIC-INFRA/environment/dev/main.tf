module "rg" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs
}

module "stg" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_storage_account"
  stg        = var.stg
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_networking"
  vnet       = var.vnet
}

module "pip" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_public_ip"
  pip        = var.pip
}

module "virtualmachine" {
  depends_on = [module.rg, module.vnet, module.pip]
  source     = "../../modules/azurerm_compute"
  vms        = var.vms

}

module "sqlserver" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_sql_server"
  sqlserver  = var.sqlserver
}

module "mssql_database" {
  depends_on    = [module.rg, module.sqlserver]
  source        = "../../modules/azurerm_sql_database"
  mysqldatabase = var.mysqldatabase
}

module "kv" {
  depends_on = [module.rg, module.virtualmachine]
  source     = "../../modules/azurerm_key_vault"
  keyvault   = var.keyvault
}

module "nsg" {
  depends_on = [module.rg, module.vnet]
  source     = "../../modules/azurerm_nsg"
  nsg        = var.nsg
}

