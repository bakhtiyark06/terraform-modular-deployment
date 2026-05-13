variable "resource_group_name" {}
variable "location" {}
variable "vnet_name" {}
variable "address_space" {}
variable "subnet_name" {}
variable "subnet_prefixes" {}
variable "nsg_name" {}
variable "vm_name" {}
variable "admin_username" {}
variable "vm_size" {
  type    = string
  default = "Standard_B1s"
}
variable "ssh_public_key_path" {}
