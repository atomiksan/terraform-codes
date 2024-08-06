provider "aws" {
    region = "us-east-1" ##Set your desired AWS region
}

resource "aws_instance" "test" {
  ami                     = "ami-0c55b159cbfafe1f0" ## specify appropriate  AMI ID
  instance_type           = "t2.micro"
}