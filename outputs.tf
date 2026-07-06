output "mssql_virtual_network_rules" {
  description = "All mssql_virtual_network_rule resources"
  value       = azurerm_mssql_virtual_network_rule.mssql_virtual_network_rules
}
output "mssql_virtual_network_rules_ignore_missing_vnet_service_endpoint" {
  description = "List of ignore_missing_vnet_service_endpoint values across all mssql_virtual_network_rules"
  value       = [for k, v in azurerm_mssql_virtual_network_rule.mssql_virtual_network_rules : v.ignore_missing_vnet_service_endpoint]
}
output "mssql_virtual_network_rules_name" {
  description = "List of name values across all mssql_virtual_network_rules"
  value       = [for k, v in azurerm_mssql_virtual_network_rule.mssql_virtual_network_rules : v.name]
}
output "mssql_virtual_network_rules_server_id" {
  description = "List of server_id values across all mssql_virtual_network_rules"
  value       = [for k, v in azurerm_mssql_virtual_network_rule.mssql_virtual_network_rules : v.server_id]
}
output "mssql_virtual_network_rules_subnet_id" {
  description = "List of subnet_id values across all mssql_virtual_network_rules"
  value       = [for k, v in azurerm_mssql_virtual_network_rule.mssql_virtual_network_rules : v.subnet_id]
}

