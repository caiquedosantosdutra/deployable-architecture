variable "pi_workspace_name" {
  type        = string
  description = "Nome único para o workspace PowerVS"
}

variable "pi_zone" {
  type        = string
  description = "Zona PowerVS (use sao01)"
  default     = "sao01"
}

variable "ibmcloud_api_key" {
  type        = string
  description = "Zona PowerVS (use sao01)"
  default     = "sao01"
}
variable "pi_resource_group_name" {
  type        = string
  description = "Nome do Resource Group existente"
  default     = "Default"

}

variable "pi_ssh_public_key" {
  type        =  object ({
    name       = string
    value = string
  })
  description = "Chave pública SSH"
  sensitive   = true
}

variable "pi_tags" {
  type        = list(string)
  description = "Tags adicionais"
  default     = []
}
