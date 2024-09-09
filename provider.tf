provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {    
    # resource_group_name  = "StorageAccount-ResourceGroup"                     
    storage_account_name = "tfstaproject011"                                 # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "container1"                                  # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "terraform.tfstate"                   # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
    access_key           = "IWQFsfkuuMrc/K1N7mcvliQQpYjLSSvgT4BCT1xNh/X0yyUBhr3vlIIgGtiZpQC1ytiT3+uWO+pG+AStiHH6mA=="  # Can also be set via `ARM_ACCESS_KEY` environment variable.
  }
}
