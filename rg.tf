resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.loc
  tags = {
    Name = var.tags
    env = var.tags1
  }
}

resource "azurerm_public_ip" "example" {
  name                = var.pip
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = var.am
}
