module "deploy-arch-ibm-pvs-inf" {
  source      = "https://cm.globalcatalog.cloud.ibm.com/api/v1-beta/offering/source/archive//solutions/standard-plus-vsi?archive=tgz&flavor=standard-plus-vsi&installType=fullstack&kind=terraform&name=deploy-arch-ibm-pvs-inf&version=v9.0.1"
  prefix                     = var.pi_workspace_name
  powervs_resource_group_name = var.pi_resource_group_name
  powervs_zone                = var.pi_zone
  ssh_public_key              = var.pi_ssh_public_key
}