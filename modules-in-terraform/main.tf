provider "aws" {
    region = "us-east-1"
}

module "ec2_instances" {
    source = "./modules/ec2_instances"
    ami = "ami-04a81a99f5ec58529"
    instance_type = "t2.micro"
    subnet_id = "subnet-031a5c52371f694d6"
    key_name = "ssh_key_pair"
} 