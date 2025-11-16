data "azurerm_mssql_server" "mssql_id" {
  for_each            = var.mysqldatabase
  name                = each.value.mssql_server
  resource_group_name = each.value.resource_group_name
}

resource "azurerm_mssql_database" "mysqldatabase" {
  for_each     = var.mysqldatabase
  name         = each.value.mssql_database_name
  server_id    = data.azurerm_mssql_server.mssql_id[each.key].id
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
  max_size_gb  = 2
  sku_name     = "S0"
  enclave_type = "VBS"
}