terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region  = "ap-south-1"
  profile = "terraform-lab"
}

data "aws_caller_identity" "current" {}

output "authenticated_arn" {
  value = data.aws_caller_identity.current.arn
}