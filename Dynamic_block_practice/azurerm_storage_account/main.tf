resource "azurerm_storage_account" "stg"{
for_each=var.storage_account 

    name=each.value.name
    resource_group_name=each.value.resource_group_name
    location=each.value.location
    account_replication_type=each.value.account_replication_type
    account_tier=each.value.account_tier
    access_tier=each.value.access_tier
    dynamic "network_rules" {
        for_each={
        rule1={
        default_action="Deny"
        bypass=["AzureServices"]
        ip_rules=["59.91.249.147"]
        }
                }
content{
    default_action=network_rules.value.default_action
    bypass=network_rules.value.bypass
    ip_rules=network_rules.value.ip_rules
}
    }
}
