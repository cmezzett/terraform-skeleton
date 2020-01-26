#------------------------------------------------------------------------------
# Setup the backend for the state file
#------------------------------------------------------------------------------
# https://docs.microsoft.com/en-us/azure/terraform/terraform-backend

resource "azurerm_resource_group" "rg-terraform-state-storage-azure" {
  name     = "rg-${var.tf_project}"
  location = var.azure_region
}

resource "azurerm_storage_account" "sa-terraform-state-storage-azure" {
  name                     = var.tf_project
  resource_group_name      = azurerm_resource_group.rg-terraform-state-storage-azure.name
  location                 = azurerm_resource_group.rg-terraform-state-storage-azure.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"

  tags = {
    environment = "production"
  }
}

resource "azurerm_storage_container" "cn-terraform-state-storage-azure" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.sa-terraform-state-storage-azure.name
  container_access_type = "private"
}