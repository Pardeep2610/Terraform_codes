rgs = {
  rg1 = {
    name     = "nokiarg1"
    location = "eastus2"
    tags = {
      env  = "prod"
      cost = "managed by pardeep"
    }
  }
  rg2 = {
    name     = "nokiarg2"
    location = "eastus2"

  }
}


vnet = {
  v1 = {
    name                = "nokiavnet"
    location            = "eastus2"
    resource_group_name = "nokiarg1"
    address_space       = ["10.0.0.0/16"]

  }
}

snet = {
  frontend = {
    name                 = "frontend-subnet"
    resource_group_name  = "nokiarg1"
    virtual_network_name = "nokiavnet"
    address_prefixes     = ["10.0.1.0/24"]
  }

  backend = {
    name                 = "backend-subnet"
    resource_group_name  = "nokiarg1"
    virtual_network_name = "nokiavnet"
    address_prefixes     = ["10.0.2.0/24"]
  }

}

pip = {
  pip1 = {
    pip_name                = "frontend-pip"
    resource_group_name = "nokiarg1"
    location            = "eastus2"
    allocation_method   = "Static"
  }
  pip2 = {
    pip_name                = "backend-pip"
    resource_group_name = "nokiarg1"
    location            = "eastus2"
    allocation_method   = "Static"
  }

}




virtual_machine = {
  frontend_vm = {
    subnet_name          = "frontend-subnet"
    virtual_network_name = "nokiavnet"
    location             = "eastus2"
    resource_group_name  = "nokiarg1"
    pip_name             = "frontend-pip"
    nic_name             = "frontend-vm-nic"
    vm_name              = "frontend-vm"
    size                 = "Standard_D2s_v3"
    admin_username       = "pardeep"
    admin_password       = "Nokia123"
  }

  backend_vm = {
    subnet_name          = "backend-subnet"
    virtual_network_name = "nokiavnet"
    location             = "eastus2"
    resource_group_name  = "nokiarg1"
    pip_name             = "backend-pip"
    nic_name             = "backend-vm-nic"
    vm_name              = "backend-vm"
    size                 = "Standard_D2s_v3"
    admin_username       = "pardeep"
    admin_password       = "Nokia123"
  }

}

sql_server = {
  server1 = {
    server_name                  = "nokiasql"
    resource_group_name          = "nokiarg1"
    location                     = "eastus2"
    version                      = "12.0"
    administrator_login          = "sqladmin"
    administrator_login_password = "Mysql123"
    minimum_tls_version          = "1.2"
  }
}

sql_database = {
  db1 = {
    server_name         = "nokiasql"
    db_name             = "nokiadb"
    resource_group_name = "nokiarg1"
    collation           = "SQL_Latin1_General_CP1_CI_AS"
    license_type        = "LicenseIncluded"
    max_size_gb         = 2
    read_scale          = false
    sku_name            = "S0"
    zone_redundant      = false
    enclave_type        = "Default"
  }

}
