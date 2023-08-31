terraform {
  required_version = ">= 1.5"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.71, < 4.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}

locals {
  common_tags = {
    "ResourceMangedBy" = "Terraform"
  }
}

resource "azurerm_resource_group" "blog" {
  name     = "blog"
  location = "West Europe"
}

module "static_web_app" {
  source = "github.com/CiucurDaniel/azure-terraform-modules//azure-static-site"

  name                = "daniel-ciucur-blog"
  resource_group_name = azurerm_resource_group.blog.name
  location            = azurerm_resource_group.blog.location
  sku_tier            = "Free"
  sku_size            = "Free"
  tags                = local.common_tags
}