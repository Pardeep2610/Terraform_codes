variable "stg" {
  type = map(object({
    name                     = string
    location                 = string
    resource_group_name      = string
    account_replication_type = string
    account_tier              = string
    account_kind=optional(string)

    network_rules=optional(object({
default_action=string
  bypass=optional(list(string))
  ip_rules=optional(list(string))

    }))

  }))
}
