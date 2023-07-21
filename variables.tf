variable "number_of_subnets" {
  type=number
  description="This defines the number of subnets"
  default = 2
  validation {
    condition = var.number_of_subnets <5
    error_message = "The number of subnets must be less than 5."
  }
}

variable "number_of_machines" {
  type = number
  description = "This defines the number of vm"
  default = 2

}

/*variable "azurerm_storage_account" {
  type = string 
  description = "This is the prefix of the storage account name"
}*/