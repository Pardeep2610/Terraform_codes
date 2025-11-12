variable "rgs" {
  type = map(object({
    name=string
    location=string
    managed_by=optional(string)
    tags=optional(map(string))
  }))
}

variable "stg"{
  type=map(object({
    name=string
    location=string
    resource_group=string
    account_tier=string
    account_replication_type=string
    network_rules=map(object({
      default_action=string
      bypass=list(string)
      ip_rules=list(string)
    }))
}))
}

variable "vnet" {
  type = map(object({
    name     = string
    location      = string
    resource_group_name       = string
    address_space = list(string)
    subnets = optional(map(object({
      name             = string
      address_prefixes = list(string)
    })))
  }))
}

variable "publicip"{
  type=map(object({
    name=string
    location=string
    resource_group_name=string
    allocation_method=string
    tags=map(string)
  }))
}