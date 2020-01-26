#------------------------------------------------------------------------------
# Terraform Backend
#------------------------------------------------------------------------------
/*
terraform {
  backend "s3" {}
}

#key="${PROJECT}-${key_name}.tfstate"
terraform {
  backend "azurerm" {
    resource_group_name  = "rg-storageaccountname"
    storage_account_name = "abcd1234"
    container_name       = "tfstate"
    key                  = "changeme.tfstate"
  }
}
*/
