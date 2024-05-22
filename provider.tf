terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.6"
    }
  }
  required_version = ">= 0.13"
}

provider "aws" {
  region = var.region
  # Uncomment the following lines if you want to use static credentials instead of a profile
  # access_key = var.aws_access_key
  # secret_key = var.aws_secret_key
}
