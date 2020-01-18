terraform {
  backend "azurerm" {
    resource_group_name  = "mahsudastorage"
    storage_account_name = "mahsudabackend"
    container_name       = "tfstate"
    key                  = "prod.terraform.state"
    access_key           = "J2xAoRroQC4kRK++fNxXpQ7BCR/yzebjjTT+/LqKe2fFX0sZtEXS5KXSwnfXrvs0Jd0F6AggZN7CkrirxvYBag=="
  }
}
