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