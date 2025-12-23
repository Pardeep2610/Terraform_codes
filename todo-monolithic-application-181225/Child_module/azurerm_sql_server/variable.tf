variable "sql_server" {
  type = map(object({
    server_name                         = string
    resource_group_name          = string
    location                     = string
    version                      = string
    administrator_login          = string
    administrator_login_password = string
    minimum_tls_version          = string
  }))
}
