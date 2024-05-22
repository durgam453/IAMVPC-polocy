module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.11.0"

  name = "my-vpc"
  cidr = var.vpc_cidr

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = var.subnets
  public_subnets  = var.subnets

  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
