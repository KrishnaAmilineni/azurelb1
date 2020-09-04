provider "azurerm" {
  version                    = ">=2.0.0"
  skip_provider_registration = true
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "cloud-reftoolbox-rg-tfstate"
    storage_account_name = "cloud0cecd6saweu"
    container_name       = "veeam-poc-p3-krishna"
    key                  = "terraform-part2.tfstate"
    subscription_id      = "24e1fa96-1741-4ab7-9ce1-578b9a605e5d"
  }
}