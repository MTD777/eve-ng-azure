output "resource_group_name" {
  value       = azurerm_resource_group.main.name
  description = "The name of the resource group."
}

output "virtual_network_id" {
  value       = azurerm_virtual_network.main.id
  description = "The Virtual Network Resource ID."
}

output "virtual_network_name" {
  value       = azurerm_virtual_network.main.name
  description = "The Name of the virtual network."
}

output "fqdn" {
  value       = azurerm_public_ip.main.fqdn
  description = "The Name of the virtual network."
}