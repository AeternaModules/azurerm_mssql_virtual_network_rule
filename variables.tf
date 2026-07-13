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
  # --- Unconfirmed validation candidates, derived from azurerm_mssql_virtual_network_rule's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) != 0
  #   message:   [from validate.VirtualNetworkRuleName: invalid when len(value) == 0]
  #   source:    [from validate.VirtualNetworkRuleName: invalid when len(value) == 0]
  # path: name
  #   condition: length(value) != 1
  #   message:   [from validate.VirtualNetworkRuleName: invalid when len(value) == 1]
  #   source:    [from validate.VirtualNetworkRuleName: invalid when len(value) == 1]
  # path: name
  #   condition: length(value) <= 64
  #   message:   [from validate.VirtualNetworkRuleName: invalid when len(value) > 64]
  #   source:    [from validate.VirtualNetworkRuleName: invalid when len(value) > 64]
  # path: name
  #   source:    [from validate.VirtualNetworkRuleName] !regexp.MustCompile(`^[A-Za-z0-9-\._]*$`).MatchString(value)
  # path: name
  #   source:    [from validate.VirtualNetworkRuleName] regexp.MustCompile(`-$`).MatchString(value)
  # path: name
  #   source:    [from validate.VirtualNetworkRuleName] regexp.MustCompile(`\.$`).MatchString(value)
  # path: name
  #   source:    [from validate.VirtualNetworkRuleName] regexp.MustCompile(`^[\._-]`).MatchString(value)
  # path: server_id
  #   source:    [from validate.ServerID] !ok
  # path: server_id
  #   source:    [from validate.ServerID] err != nil
  # path: subnet_id
  #   source:    [from commonids.ValidateSubnetID] !ok
  # path: subnet_id
  #   source:    [from commonids.ValidateSubnetID] err != nil
}

