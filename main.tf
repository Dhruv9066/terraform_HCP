provider "aws" {
  region     = "us-east-1"
}
module "ec2_demo" {
source = "./ec2"
instance_type = "t2.nano"
env = "prod"
}

output "child_value_from_root" {
  value = module.ec2_demo.env_variable_set
}
