variable "rgs" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "stg" {
  type = map(object({
    name                     = string
    location                 = string
    resource_group_name      = string
    account_tier             = string
    account_replication_type = string
    network_rules = map(object({
      default_action = string
      bypass         = list(string)
      ip_rules       = list(string)
    }))
  }))
}

variable "vnet" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    subnet = map(object({
      name             = string
      address_prefixes = list(string)
    }))

  }))
}

variable "pip" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
    tags                = optional(map(string))
  }))
}

variable "vms" {
  type = map(object({
    vm_name              = string
    virtual_network_name = string
    resource_group_name  = string
    location             = string
    admin_username       = string
    admin_password       = string
    public_name          = string
    nic_name             = string
    subnet               = string

  }))
}

variable "sqlserver" {
  type = map(object({
    name                         = string
    resource_group_name          = string
    location                     = string
    version                      = string
    administrator_login          = string
    administrator_login_password = string
    minimum_tls_version          = string
    tags                         = optional(map(string))
  }))
}

variable "mysqldatabase" {
  type = map(object({
    mssql_server        = string
    resource_group_name = string
    mssql_database_name = string


  }))

}

variable "keyvault" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
  }))

}

variable "bation" {
  type = map(object({
    subnet               = string
    virtual_network_name = string
    resource_group_name  = string
    public_name          = string
    bation_name          = string
    location             = string
  }))
}

variable "nsg" {
  type = map(object({
    nsg_name             = string
    location             = string
    resource_group_name  = string
    nic_name             = string
    virtual_network_name = string
  }))
}