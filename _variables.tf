variable "region" {
  default = ""
}

variable "TF_VAR_access_key" {
  default = ""
}
variable "TF_VAR_secret_key" {
  default = ""
}

variable "tfstate_key" {
  default = ""
}
variable "vpc" {
  default     = ""
  enable_dns_hostnames = bool
  enable_dns_support   = bool
}
variable "EIP" {
  vpc      = bool
  default     = ""
}
variable "Gateway" {
  default = ""
}
variable "subnet_EM1" {
  default = ""
}
variable "SG" {
  default = ""
}
variable "Routing_table" {
  default = ""
}
variable "NAT" {
  default = ""
}





