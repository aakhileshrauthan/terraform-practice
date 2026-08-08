variable "rgs" {
    description = "A map of resource groups to create"
    type        = map(object({
        name     = string
        location = string
    }))
}


#feature branch practice
resource "azurerm_resource_group" "resource_group" {
for_each = var.rgs
  name     = each.value.name
  location = each.value.location
}