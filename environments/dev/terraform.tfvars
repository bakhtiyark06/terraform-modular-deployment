resource_group_name = "rg-terraform-modular-dev-bk"
location            = "Central US"

vnet_name       = "vnet-dev-bk"
address_space   = ["10.0.0.0/16"]
subnet_name     = "subnet-dev-bk"
subnet_prefixes = ["10.0.1.0/24"]

nsg_name = "nsg-dev-bk"

vm_name             = "vm-dev-bk"
admin_username      = "azureuser"
ssh_public_key_path = "ssh_public_key.pub"
vm_size             = "Standard_D2s_v3"
