variable "rg_name" {
  type        = string
  description = "Enter the Resource Group Name Here...."
}

variable "location" {
  type        = string
  description = "Enter the Resource Group Name Here...."
}

variable "vns" {
  description = "Map of virtual networks with subnets"
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    subnets = map(object({
      name             = string
      address_prefixes = list(string)
    }))
  }))
}
