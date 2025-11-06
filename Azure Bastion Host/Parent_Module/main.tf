module "rgs" {
  source  = "../Child_Module/azurerm_resource_group"
  rgtinku = var.rgtinku
}

module "vnet" {
  depends_on = [module.rgs]
  source     = "../Child_Module/azurerm_virtual_network"
  vnet       = var.vnet
}

module "subnet" {
  depends_on  = [module.vnet]
  source      = "../Child_Module/azurerm_subnet_name"
  subnet_name = var.subnet_name
}

module "pip" {
  depends_on = [module.rgs]
  source     = "../Child_Module/azurerm_public_ip"
  publicip   = var.publicip
}

module "vm" {
  depends_on      = [module.rgs, module.pip, module.subnet, module.vnet]
  source          = "../Child_Module/azurerm_virtual_machine"
  virtual_machine = var.virtual_machine
}

module "nsg" {
  depends_on      = [module.rgs, module.vm]
  source          = "../Child_Module/azurerm_nsg"
  nsgroup         = var.nsgroup
  virtual_machine = var.virtual_machine
}

module "bastion" {
  depends_on  = [module.rgs, module.subnet]
  source      = "../Child_Module/azurerm_Azure_Bastion"
  bation_host = var.bation_host
  # publicip = var.publicip
  # subnet_name = var.subnet_name
}

module "kv"{
  source="../Child_Module/azurerm_keyvault"
  
}