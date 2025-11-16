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