terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "em-tfstate"
    key    = var.tfstate_key
    region = "us-east-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region      = var.region
  access_key  = var.TF_VAR_access_key
  secret_key  = var.TF_VAR_secret_key
}