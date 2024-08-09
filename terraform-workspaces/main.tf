provider "aws" {
    region = "us-east-1"
}

module "ec2_instance" {
  source = "./modules/ec2_instances"
  ami = var.ami
  instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
}
