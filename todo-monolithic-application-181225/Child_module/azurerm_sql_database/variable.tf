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
