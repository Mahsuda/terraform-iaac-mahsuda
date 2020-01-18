terraform {
  backend "azurerm" {
    resource_group_name  = "mahsudabackend"
    storage_account_name = "mahsudastorage"
    container_name       = "tfstate"
    key                  = "prod.terraform.state"
  }
}
