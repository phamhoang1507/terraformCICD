terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-southeast-1"
}

module "vpc" {
  source = "../stack/vpc"
  stage  = var.stage
  availability_zones_a = var.availability_zones_a
  availability_zones_b = var.availability_zones_b
}
