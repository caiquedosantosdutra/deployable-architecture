module "deploy-arch-ibm-pvs-inf" {
  source      = "terraform-ibm-modules/powervs-infrastructure/ibm"
  prefix                     = var.pi_workspace_name
  powervs_resource_group_name = var.pi_resource_group_name
  powervs_zone                = var.pi_zone
  ssh_public_key              = var.pi_ssh_public_key
}