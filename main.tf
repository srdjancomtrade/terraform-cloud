resource "azurerm_resource_group" "SrdjanTerraformTest" {
    name = "SrdjanTerraformTest"
    location = local.location
  
}

resource "azurerm_virtual_network" "tfvnet" {
    name = "tfvnet"
    location = local.location
    resource_group_name = azurerm_resource_group.SrdjanTerraformTest.name
    address_space = ["10.0.0.0/16"]
    depends_on = [ 
        azurerm_resource_group.SrdjanTerraformTest ]
  
}

resource "azurerm_subnet" "subnetA" {
    name = "subnetA"
    resource_group_name = azurerm_resource_group.SrdjanTerraformTest.name
    virtual_network_name = azurerm_virtual_network.tfvnet.name
    address_prefixes = ["10.0.0.0/24"]
    depends_on = [ azurerm_virtual_network.tfvnet ]

}
