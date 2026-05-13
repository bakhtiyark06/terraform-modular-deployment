terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-modular-BK"
    storage_account_name = "stterraformmodulardevbk"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}
