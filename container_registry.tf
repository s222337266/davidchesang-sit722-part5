# create container registry in azure
resource "azurerm_container_registry" "container_registry" {
    name = "${var.app_name}s222337266"
    resource_group_name = azurerm_resource_group.bookapp.name
    location = var.location
    admin_enabled = true
    sku = "Basic"
}