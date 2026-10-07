terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfbackend-jpe"
    storage_account_name = "sttfbackendjpe"
    container_name       = "tfstate"
    key                  = "storage-account-remote-state/dev.tfstate"
  }
}