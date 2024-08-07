provider "aws" {
    region = "us-east-1"
}

module "ec2_instances" {
    source = "./modules/ec2_instances"
    ami_value  = "ami-04a81a99f5ec58529"
    instance_type_value = "t2.micro"
    subnet_id_value = "subnet-031a5c52371f694d6"
    key_name_value = "ssh_key_pair"
} 