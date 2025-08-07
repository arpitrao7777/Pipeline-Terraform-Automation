resource "azurerm_resource_group" "rgs" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_storage_account" "stgs" {
  name                     = "test8307532971"
  location                 = azurerm_resource_group.rgs.location
  resource_group_name      = azurerm_resource_group.rgs.name
  account_replication_type = "LRS"
  account_tier             = "Standard"
}

resource "azurerm_virtual_network" "vns" {
  depends_on          = [azurerm_resource_group.rgs]
  for_each            = var.vns
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space

  dynamic "subnet" {
    for_each = each.value.subnets
    content {
      name             = subnet.value.name
      address_prefixes = subnet.value.address_prefixes
    }
  }
}

