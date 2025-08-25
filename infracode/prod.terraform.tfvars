rg_name  = "rg-prod"
location = "centralindia"

vns = {
  virtualnetwork1 = {
    name                = "vnet1"
    location            = "centralindia"
    resource_group_name = "rg-prod"
    address_space       = ["10.2.0.0/16"]
    subnets = {
      snet1 = {
        name             = "snet-1"
        address_prefixes = ["10.2.1.0/24"]
      }
      snet2 = {
        name             = "snet-2"
        address_prefixes = ["10.2.2.0/24"]
      }
    }
  }
  virtualnetwork2 = {
    name                = "vnet2"
    location            = "centralindia"
    resource_group_name = "rg-prod"
    address_space       = ["10.3.0.0/16"]
    subnets = {
      snet-1 = {
        name             = "s-net-1"
        address_prefixes = ["10.3.1.0/24"]
      }
      snet-2 = {
        name             = "s-net-2"
        address_prefixes = ["10.3.2.0/24"]
      }
    }
  }
}

