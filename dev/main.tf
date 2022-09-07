locals {
  # Common tags to be assigned to all resources
  vpc_tags = {
    Name        = "${var.vpc_name}"
    Owner       = "SRE"
    Contact     = "SRE"
    Project     = "campfire"
    Environment = "Development"
  }
}


module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "3.14.4"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.availability_zone_names
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway   = var.enable_nat_gateway
  single_nat_gateway   = var.single_nat_gateway
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support

  tags = local.vpc_tags
}