provider "aws" {
  region = "us-east-1" ##Set your desired AWS region
}

resource "aws_instance" "test" {
  ami                     = "ami-04a81a99f5ec58529" ## specify appropriate  AMI ID
  instance_type           = "t2.micro"  
  subnet_id = "subnet-031a5c52371f694d6"
  key_name = "ssh_key_pair"
}

resource "aws_instance" "example" {
  ami                     = "ami-04a81a99f5ec58529" ## specify appropriate  AMI ID
  instance_type           = "t2.micro"  
  subnet_id = "subnet-031a5c52371f694d6"
  key_name = "ssh_key_pair"
}

//resource "aws_instance" "bot" {
//  ami                     = "ami-04a81a99f5ec58529" ## specify appropriate  AMI ID
//  instance_type           = "t2.micro"  
//  subnet_id = "subnet-031a5c52371f694d6"
//  key_name = "ssh_key_pair"
//}