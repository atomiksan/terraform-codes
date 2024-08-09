provider "aws" {
    region = "us-east-1"
}

module "ec2_instance" {
  source         = "./modules/ec2_instances"
  ami            = var.ami
  instance_type  = var.instance_type
}
