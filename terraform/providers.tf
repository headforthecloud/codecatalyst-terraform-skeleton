terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.31"
    }
  }

  backend "s3" {
    encrypt = true
  }

  required_version = "~> 1.2"
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      owner = var.owner_name
    }
  }
}
