terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "em-tfstate"
    key    = "em.tfstate"
    region = "us-east-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region      = "us-east-1"
  secret_key  = var.TF_VAR_secret_key
  access_key  = var.TF_VAR_access_key
}

variable "TF_VAR_access_key" {
  default = ""
}
variable "TF_VAR_secret_key" {
  default = ""
}