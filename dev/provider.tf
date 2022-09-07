terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket = "campfire-infra"
    key    = "dev"
    region = "us-west-2"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}