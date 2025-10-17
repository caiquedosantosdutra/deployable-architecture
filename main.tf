terraform {
  required_providers {
    ibm = {
      source  = "ibm-cloud/ibm"
      version = ">= 1.81.0"
    }
    time = {
      source  = "hashicorp/time"
      version = ">= 0.9.1"
    }
  }
}

provider "ibm" {
  region = "sao"  
  zone   = var.pi_zone    
}

module "powervs-workspace" {
  source  = "terraform-ibm-modules/powervs-workspace/ibm"
  version = "3.2.1"
  pi_workspace_name = var.pi_workspace_name
  pi_resource_group_id = var.pi_resource_group_id
  pi_zone = var.pi_zone
  pi_ssh_public_key = var.pi_ssh_public_key
  pi_public_subnet_enable = false
}

