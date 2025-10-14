provider "ibm" {
  region = "sao01"   # exemplo: "sao01" ou "us-south"
  zone   = var.pi_zone     # exemplo: "sao01-1"
}

module "powervs-workspace" {
  source  = "terraform-ibm-modules/powervs-workspace/ibm"
  version = "3.2.1"
  pi_workspace_name = var.pi_workspace_name
  pi_resource_group_name = var.pi_resource_group_name
  pi_zone = var.pi_zone
  pi_ssh_public_key = var.pi_ssh_public_key.value
  pi_public_subnet_enable = false
}

data "ibm_resource_group" "resource_group_ds" {
  name = var.pi_resource_group_name
}