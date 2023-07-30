
/* terraform {
  required_providers {
    aws = ">= 5.0"
  }
} */

provider "aws" {
  region = "eu-west-1"

  assume_role {
    role_arn = "arn:aws:iam::099211283664:role/admin"
  }
}

terraform {
  backend "s3" {
    region         = "eu-west-1"
    bucket         = "kabisa-terraform-statefiles"
    dynamodb_table = "kabisa-terraform-lockfiles"
    key            = "kabisa-playground-anas/github-actions-infra.tfstate"
    encrypt        = true
    role_arn       = "arn:aws:iam::003476575487:role/admin"
    session_name   = "terraform"
  }
}