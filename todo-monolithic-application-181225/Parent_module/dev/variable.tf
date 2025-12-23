variable "rgs" {
  type = map(object({
    name     = string
    location = string
    tags     = optional(map(string))
  }))
}

variable "vnet" {
  type = map(object({

    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
  }))

}


variable "snet" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}

variable "pip" {
  type = map(object({
    pip_name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
  }))
}

variable "virtual_machine" {
  type = map(object({
    subnet_name          = string
    location             = string
    virtual_network_name = string
    resource_group_name  = string
    pip_name             = string
    nic_name             = string
    vm_name              = string
    size                 = string
    admin_username       = string
    admin_password       = string

  }))
}

variable "sql_server" {
  type = map(object({
    server_name                  = string
    resource_group_name          = string
    location                     = string
    version                      = string
    administrator_login          = string
    administrator_login_password = string
    minimum_tls_version          = string
  }))
}

variable "sql_database" {
  type = map(object({
    server_name         = string
    db_name             = string
    resource_group_name = string
    collation           = string
    license_type        = string
    max_size_gb         = string
    read_scale=string
    sku_name            = string
    zone_redundant      = string
    enclave_type        = string
  }))
}