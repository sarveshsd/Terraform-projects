provider "aws" {
  region = "us-east-1"
}

module "networking" {
  source          = "../../modules/networking"
  env             = "prod"
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  azs             = var.azs
}
