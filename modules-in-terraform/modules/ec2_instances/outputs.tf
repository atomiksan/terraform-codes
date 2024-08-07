output "ip_address" {
    value = aws_instance.test.public_ip
}