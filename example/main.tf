resource "azurerm_resource_group" "rg" {

  name     = "githubrg"

  location = "East US"

}

 

resource "azurerm_storage_account" "stg1" {

  name                     = "sujistorageaccount1"

  resource_group_name      = azurerm_resource_group.rg.name

  location                 = azurerm_resource_group.rg.location

  account_tier             = "Standard"

  account_replication_type = "GRS"

 

  tags = {

    environment = "staging"

  }

}
