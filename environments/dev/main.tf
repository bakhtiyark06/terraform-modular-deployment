terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group" {
  source              = "../../modules/resource-group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "networking" {
  source              = "../../modules/networking"
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  subnet_name         = var.subnet_name
  subnet_prefixes     = var.subnet_prefixes
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
}

module "security" {
  source              = "../../modules/security"
  nsg_name            = var.nsg_name
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
}

module "virtual_machine" {
  source              = "../../modules/virtual-machine"
  vm_name             = var.vm_name
  admin_username      = var.admin_username
  subnet_id           = module.networking.subnet_id
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  ssh_public_key_path = var.ssh_public_key_path
}