resource "aws_instance" "test-server-1" {
    ami           = var.ami
    instance_type = var.instance_type
}

