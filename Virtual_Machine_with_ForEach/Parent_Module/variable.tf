variable "rgtinku" {
  type = map(object({
    rg_name  = string
    location = string
  }))
}

variable "vnet" {
  type = map(object({
    vnet_name     = string
    location      = string
    rg_name       = string
    address_space = list(string)
  }))
}

variable "subnet_name" {
  type = map(object({
    subnet_name      = string
    rg_name          = string
    vnet_name        = string
    address_prefixes = list(string)
  }))
}

variable "publicip" {
  type = map(object({
    pip_name          = string
    location          = string
    rg_name           = string
    allocation_method = string
  }))
}

variable "virtual_machine" {
  type = map(object({
    vm_name        = string
    location       = string
    rg_name        = string
    admin_username = optional(string)
    admin_password = optional(string)
    vnet_name      = string
    subnet_name    = string
    pip_name       = string
    nic_name       = string



  }))

}

variable "nsgroup" {
  type = map(object({
    name     = string
    nic_name = string
    rg_name  = string
    location = string
  }))
}

