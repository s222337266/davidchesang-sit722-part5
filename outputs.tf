output "acr_login_server" {
  value = azurerm_container_registry.container_registry.login_server
}

output "acr_admin_username" {
  value = azurerm_container_registry.container_registry.admin_username
}

output "acr_admin_password" {
  value = azurerm_container_registry.container_registry.admin_password
  sensitive = true
}