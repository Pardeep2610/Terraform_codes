variable "storage_account"{
    type=map(object({
        name=string
        resource_group_name=string
        location=string
        account_replication_type=string
        account_tier=string
        access_tier=optional(string)
        network_rules=optional(map(object({
            default_action=string
            bypass=list(string)
            ip_rules=list(string)
        })))
    }))
}