rg_name  = "rg-001"
location = "centralindia"

vns = {
  virtualnetwork1 = {
    name                = "vnet-1"
    location            = "centralindia"
    resource_group_name = "rg-001"
    address_space       = ["10.0.0.0/16"]
    subnets = {
      snet1 = {
        name             = "snet1"
        address_prefixes = ["10.0.1.0/24"]
      }
      snet2 = {
        name             = "snet2"
        address_prefixes = ["10.0.2.0/24"]
      }
    }
  }
  virtualnetwork2 = {
    name                = "vnet-2"
    location            = "centralindia"
    resource_group_name = "rg-001"
    address_space       = ["10.1.0.0/16"]
    subnets = {
      snet-1 = {
        name             = "s-net1"
        address_prefixes = ["10.1.1.0/24"]
      }
      snet-2 = {
        name             = "s-net2"
        address_prefixes = ["10.1.2.0/24"]
      }
    }
  }
}
