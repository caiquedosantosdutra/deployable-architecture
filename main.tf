module "powervs_infrastructure" {
  source      = "terraform-ibm-modules/powervs-workspace/ibm"
  version = "latest"
  pi_workspace_name = var.pi_workspace_name
  pi_zone = var.pi_resource_group_name
  pi_ssh_public_key = var.pi_ssh_public_key
  pi_public_subnet_enable = false
}