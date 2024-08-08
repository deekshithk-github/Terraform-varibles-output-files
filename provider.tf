provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {    
    # resource_group_name  = "StorageAccount-ResourceGroup"                     
    storage_account_name = "tfstaproject01"                                 # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "container1"                                  # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "terraform.tfstate"                   # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
    access_key           = "YoZO9CdY22hvHOmBJ3uX37StXuovFQsAQC6EgIxfIjr8indz/LOFO87Oe3dfpRt476wKlAmy25Xn+AStYoqpLA=="  # Can also be set via `ARM_ACCESS_KEY` environment variable.
  }
}
