locals {
  control_plane_groups = {
    securityRules = {
      allow_ssh = {
        description                = "Allow SSH"
        protocol                   = "Tcp"
        sourcePortRange            = "*"
        destinationPortRange       = "22"
        sourceAddressPrefix        = "*"
        destinationAddressPrefix   = "*"
        access                     = "Allow"
        priority                   = 2200
        direction                  = "Inbound"
        sourcePortRanges           = []
        destinationPortRanges      = []
        sourceAddressPrefixes      = []
        destinationAddressPrefixes = []
      }
      allow_apiserver = {
        description                = "Allow K8s API Server"
        protocol                   = "Tcp"
        sourcePortRange            = "*"
        destinationPortRange       = "6443"
        sourceAddressPrefix        = "*"
        destinationAddressPrefix   = "*"
        access                     = "Allow"
        priority                   = 2201
        direction                  = "Inbound"
        sourcePortRanges           = []
        destinationPortRanges      = []
        sourceAddressPrefixes      = []
        destinationAddressPrefixes = []
      }
    },
    defaultSecurityRules = {
      AllowVnetInBound = {
        description                = "Allow inbound traffic from all VMs in VNET"
        protocol                   = "*"
        sourcePortRange            = "*"
        destinationPortRange       = "*"
        sourceAddressPrefix        = "VirtualNetwork"
        destinationAddressPrefix   = "VirtualNetwork"
        access                     = "Allow"
        priority                   = 65000
        direction                  = "Inbound"
        sourcePortRanges           = []
        destinationPortRanges      = []
        sourceAddressPrefixes      = []
        destinationAddressPrefixes = []
      }
      AllowAzureLoadBalancerInBound = {
        description                = "Allow inbound traffic from azure load balancer"
        protocol                   = "*"
        sourcePortRange            = "*"
        destinationPortRange       = "*"
        sourceAddressPrefix        = "AzureLoadBalancer"
        destinationAddressPrefix   = "*"
        access                     = "Allow"
        priority                   = 65001
        direction                  = "Inbound"
        sourcePortRanges           = []
        destinationPortRanges      = []
        sourceAddressPrefixes      = []
        destinationAddressPrefixes = []
      }
      DenyAllInBound = {
        description                = "Deny all inbound traffic"
        protocol                   = "*"
        sourcePortRange            = "*"
        destinationPortRange       = "*"
        sourceAddressPrefix        = "*"
        destinationAddressPrefix   = "*"
        access                     = "Deny"
        priority                   = 65500
        direction                  = "Inbound"
        sourcePortRanges           = []
        destinationPortRanges      = []
        sourceAddressPrefixes      = []
        destinationAddressPrefixes = []
      }
      AllowVnetOutBound = {
        description                = "Allow outbound traffic from all VMs to all VMs in VNET"
        protocol                   = "*"
        sourcePortRange            = "*"
        destinationPortRange       = "*"
        sourceAddressPrefix        = "VirtualNetwork"
        destinationAddressPrefix   = "VirtualNetwork"
        access                     = "Allow"
        priority                   = 65000
        direction                  = "Outbound"
        sourcePortRanges           = []
        destinationPortRanges      = []
        sourceAddressPrefixes      = []
        destinationAddressPrefixes = []
      }
      AllowInternetOutBound = {
        description                = "Allow outbound traffic from all VMs to Internet"
        protocol                   = "*"
        sourcePortRange            = "*"
        destinationPortRange       = "*"
        sourceAddressPrefix        = "*"
        destinationAddressPrefix   = "Internet"
        access                     = "Allow"
        priority                   = 65001
        direction                  = "Outbound"
        sourcePortRanges           = []
        destinationPortRanges      = []
        sourceAddressPrefixes      = []
        destinationAddressPrefixes = []
      }
      DenyAllOutBound = {
        description                = "Deny all outbound traffic"
        protocol                   = "*"
        sourcePortRange            = "*"
        destinationPortRange       = "*"
        sourceAddressPrefix        = "*"
        destinationAddressPrefix   = "*"
        access                     = "Deny"
        priority                   = 65500
        direction                  = "Outbound"
        sourcePortRanges           = []
        destinationPortRanges      = []
        sourceAddressPrefixes      = []
        destinationAddressPrefixes = []
      }
    }
  }
}
