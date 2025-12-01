rgtinku = {
  rg1 = {
    rg_name  = "munni"
    location = "eastus"
  }
}

vnet = {
  vnet1 = {
    vnet_name     = "sita_vnet"
    location      = "eastus"
    rg_name       = "munni"
    address_space = ["10.0.0.0/16"]

  }
}

subnet_name = {
  subnet1 = {
    subnet_name      = "sita_subnet"
    rg_name          = "munni"
    vnet_name        = "sita_vnet"
    address_prefixes = ["10.0.1.0/24"]

  }
}

publicip = {
  pip1 = {
    pip_name          = "sitapip"
    location          = "eastus"
    rg_name           = "munni"
    allocation_method = "Static"
  }
  pip2 = {
    pip_name          = "ritapip"
    location          = "eastus"
    rg_name           = "munni"
    allocation_method = "Static"
  }
}

virtual_machine = {
  vm1 = {
    vm_name           = "frontend-vm"
    location          = "eastus"
    rg_name           = "munni"
    admin_username    = "pardeep"
    admin_password    = "Nokia@123"
    vnet_name         = "sita_vnet"
    subnet_name       = "sita_subnet"
    pip_name          = "sitapip"
    nic_name          = "vm1-nic"
    allocation_method = "Static"
  }

  vm2 = {
    vm_name           = "Backend-vm"
    location          = "eastus"
    rg_name           = "munni"
    admin_username    = "pardeep"
    admin_password    = "Nokia@123"
    vnet_name         = "sita_vnet"
    subnet_name       = "sita_subnet"
    pip_name          = "ritapip"
    nic_name          = "vm2-nic"
    allocation_method = "Static"
  }
}

nsgroup = {
  vm1 = {
    name     = "munninsg1"
    location = "eastus"
    rg_name  = "munni"
    nic_name = "vm1-nic"
  }

  vm2 = {
    name     = "munninsg2"
    location = "eastus"
    rg_name  = "munni"
    nic_name = "vm2-nic"
  }

}

