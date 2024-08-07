terraform {
  backend "s3" {
    bucket = "satya-s3-demo-test"
    region = "us-east-1"
    key = "satya/terraform.tfstate"
  }
}