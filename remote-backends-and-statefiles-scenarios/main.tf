provider "aws" {
    region = "us-east-1"  
}

resource "aws_instance" "test-1" {
    instance_type = "t2.micro"
    ami = "ami-04a81a99f5ec58529"
    subnet_id = "subnet-031a5c52371f694d6"
    key_name = "ssh_key_pair"
}

resource "aws_s3_bucket" "test_bucket" {
    bucket = "satya-s3-demo-test"  
}

resource "aws_dynamodb_table" "terraform_lock" {
    name = "terraform-lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
      name = "LockID"
      type = "S"
    }
  
# }