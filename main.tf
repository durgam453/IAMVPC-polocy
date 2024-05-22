module "vpc" {
  source = "./vpc.tf"
}

module "iam" {
  source = "./iam.tf"
}
