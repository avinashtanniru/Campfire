variable "vpc_name" {
  type     = string
  nullable = false
  description = "Default VPC Name"
  default = "Dev-VPC"
}

variable "vpc_cidr" {
  type     = string
  nullable = false
  description = "CIDR for VPC Block"
  default = "10.2.0.0/16"
}

variable "availability_zone_names" {
  type     = list
  nullable = false
  description = "AZ for VPC Block"
  default = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "private_subnets" {
  type     = list
  nullable = false
  description = "Private Subnets for VPC Block"
  default = [ "10.2.32.0/21", "10.2.40.0/21" ]
}

variable "public_subnets" {
  type     = list
  nullable = false
  description = "Public Subnets for VPC Block"
  default = [ "10.2.0.0/21", "10.2.8.0/21" ]
}

variable "enable_nat_gateway" {
  type     = bool
  nullable = false
  description = "Create a NAT Gateway"
  default = true
}

variable "single_nat_gateway" {
  type     = bool
  nullable = false
  description = "Create a Single NAT Gateway"
  default = true
}

variable "enable_dns_hostnames" {
  type     = bool
  nullable = false
  description = "Enable DNS Hostnames"
  default = true
}

variable "enable_dns_support" {
  type     = bool
  nullable = false
  description = "Enable DNS Support"
  default = true
}

variable "vpc_tags" {
  type     = map
  nullable = false
  description = "VPC Tags"
  default = {
    Name        = "Terragrunt-VPC"
    Owner       = "SRE"
    Contact     = "SRE"
    Project     = "campfire"
    Environment = "Development"
  }
}