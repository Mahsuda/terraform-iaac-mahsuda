terraform {
  backend "azurerm" {
    resource_group_name  = "mahsudastorage"
    storage_account_name = "mahsudabackend"
    container_name       = "tfstate"
    key                  = "prod.terraform.state"
  }
}
