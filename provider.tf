terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.32.0"
    }
  }
backend "azurerm" {
    resource_group_name= "RG-Atit1"
    storage_account_name = "atitstorage"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfstate"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "atit.tfstate"        
}
}
provider "azurerm" {
  features {
    
}
  subscription_id = "d398b53e-a651-4b09-a625-6a83cb76d086"

}

