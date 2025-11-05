terraform {
  required_version = ">= 1.6.0"

  backend "s3" {
    bucket         = "my-terraform-state"
    key            = "networking/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "networking" {
  source          = "../../modules/networking"
  env             = "dev"
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  azs             = var.azs
}
