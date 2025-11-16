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