variable "mysqldatabase" {
  type = map(object({
    mssql_server        = string
    resource_group_name = string
    mssql_database_name = string


  }))

}