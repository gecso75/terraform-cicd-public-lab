terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "terraform_data" "deployment" {
  input = {
    name        = "terraform-cicd-public-lab"
    environment = "production"
    managed_by  = "terraform"
  }
}

# PR protection test
