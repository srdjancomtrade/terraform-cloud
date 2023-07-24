terraform {
   
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.65.0"
    }
  }
}



provider "azurerm" {
  # Configuration options
  subscription_id = "851deb7a-8088-47ca-983d-6e2ffacc52c1"
  tenant_id = "2b598347-7f8d-4087-9c25-304a5a638626"
  client_id = "2fe6182a-d03f-4d13-b86e-c49f9218debf"
  client_secret = "ul_8Q~ow-CM0K1e_IXaOC2TB3j~38GSrquEseaKV"
  features {}
}

provider "azuread" {
  tenant_id = "2b598347-7f8d-4087-9c25-304a5a638626"
  client_id = "2fe6182a-d03f-4d13-b86e-c49f9218debf"
  client_secret = "ul_8Q~ow-CM0K1e_IXaOC2TB3j~38GSrquEseaKV"
  
}
