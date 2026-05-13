variable "vm_name" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vm_size" {
  type    = string
  default = "Standard_B1s"
}

variable "ssh_public_key_path" {
  type = string
}
