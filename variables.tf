variable "mssql_virtual_network_rules" {
  description = <<EOT
Map of mssql_virtual_network_rules, attributes below
Required:
    - name
    - server_id
    - subnet_id
Optional:
    - ignore_missing_vnet_service_endpoint
EOT

  type = map(object({
    name                                 = string
    server_id                            = string
    subnet_id                            = string
    ignore_missing_vnet_service_endpoint = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.mssql_virtual_network_rules : (
        length(v.name) != 0
      )
    ])
    error_message = "[from validate.VirtualNetworkRuleName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.mssql_virtual_network_rules : (
        length(v.name) != 1
      )
    ])
    error_message = "[from validate.VirtualNetworkRuleName: invalid when len(value) == 1]"
  }
  validation {
    condition = alltrue([
      for k, v in var.mssql_virtual_network_rules : (
        length(v.name) <= 64
      )
    ])
    error_message = "[from validate.VirtualNetworkRuleName: invalid when len(value) > 64]"
  }
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

