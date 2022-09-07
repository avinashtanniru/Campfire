vpc_name = "Campfire-Dev-VPC"
vpc_cidr = "10.2.0.0/16"
availability_zone_names = [
  "us-west-2a",
  "us-west-2b",
  "us-west-2c"
]
private_subnets =  [
  "10.2.32.0/21",
  "10.2.40.0/21"
]
public_subnets = [
  "10.2.0.0/21",
  "10.2.8.0/21"
]
