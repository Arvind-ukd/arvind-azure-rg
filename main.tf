resource "azurerm_resource_group" "example" {
   for_each         = toset(var.location) 
  name     = "arvind-rg-${each.key}"
  location = "Central India"
}