variable "admin_username" {
  type        = string
  description = "The admin user for the Azure VM"
}

# variable "admin_password" {
#   type        = string
#   description = "The admin password for the Azure VM"
#   sensitive = true

# }

variable "allowed_ipv4" {
  type        = list(string)
  default     = []
  description = "A list of any additional IPv4 addresses you wish to allow"
}

variable "resource_group_name" {
  type        = string
  default     = "eve-ng"
  description = "The name of the Resource Group"
}

variable "suffix" {
  type        = string
  default     = "eve-ng"
  description = "The suffix which will be used in naming Azure resources"
}

variable "eveng_fqdn" {
  type        = string
  default     = ""
  description = "The FQDN you would like the EVE-NG server to resolve to"
}

variable "address_space" {
  type        = string
  description = "The address space of the virtual network."
}

variable "location" {
  type        = string
  default     = "northcentralus" # London
  description = "The Azure Region where the Resource Group should exist."
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to resources."
}

variable "vm_size" {
  type        = string
  default     = "Standard_D4s_v4" # 4vCPUs, 16GB RAM
  description = "Specifies the size of the Virtual Machine."
}

variable "disk_size_gb" {
  type        = number
  default     = 100
  description = "Specifies the size of the Data disk in GB"
}

variable "IPAddress" {
  type = string
  description = "Enter your home IP address. If you do not know it you can go to https://whatismyipaddress.com/. For example: 1.2.3.4 ."
  validation {
    condition = can(regex("\\b(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\b", var.IPAddress))
	error_message = "Could not parse IP address. Please ensure the IP is a valid IPv4 IP address."
  }

}
