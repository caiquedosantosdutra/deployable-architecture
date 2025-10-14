module "powervs-workspace" {
  source  = "terraform-ibm-modules/powervs-workspace/ibm"
  version = "3.2.1"
  pi_workspace_name = var.pi_workspace_name
  pi_resource_group_name = var.pi_resource_group_name
  pi_zone = var.pi_zone
  pi_ssh_public_key = var.pi_ssh_public_key
  pi_public_subnet_enable = false
}