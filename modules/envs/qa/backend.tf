terraform {
  required_version = ">= 1.6.0"

  backend "s3" {
    bucket         = "my-terraform-state"
    key            = "networking/qa/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
}