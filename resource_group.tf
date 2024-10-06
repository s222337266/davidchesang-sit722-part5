resource "azurerm_resource_group" "bookapp" {
    name = var.resource_group 
    location = var.location
}