output "mssql_virtual_network_rules_ignore_missing_vnet_service_endpoint" {
  description = "Map of ignore_missing_vnet_service_endpoint values across all mssql_virtual_network_rules, keyed the same as var.mssql_virtual_network_rules"
  value       = { for k, v in azurerm_mssql_virtual_network_rule.mssql_virtual_network_rules : k => v.ignore_missing_vnet_service_endpoint }
}
output "mssql_virtual_network_rules_name" {
  description = "Map of name values across all mssql_virtual_network_rules, keyed the same as var.mssql_virtual_network_rules"
  value       = { for k, v in azurerm_mssql_virtual_network_rule.mssql_virtual_network_rules : k => v.name }
}
output "mssql_virtual_network_rules_server_id" {
  description = "Map of server_id values across all mssql_virtual_network_rules, keyed the same as var.mssql_virtual_network_rules"
  value       = { for k, v in azurerm_mssql_virtual_network_rule.mssql_virtual_network_rules : k => v.server_id }
}
output "mssql_virtual_network_rules_subnet_id" {
  description = "Map of subnet_id values across all mssql_virtual_network_rules, keyed the same as var.mssql_virtual_network_rules"
  value       = { for k, v in azurerm_mssql_virtual_network_rule.mssql_virtual_network_rules : k => v.subnet_id }
}

