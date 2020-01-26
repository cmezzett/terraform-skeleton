#------------------------------------------------------------------------------
# Variables that need to be set
#------------------------------------------------------------------------------
variable "azure_region" {
  description = "The Azure region to work in"
  type        = string
  default     = "westeurope"
}

variable "tf_project" {
  description = "The name of the project folder that inputs.tfvars is in"
  type        = string
}
