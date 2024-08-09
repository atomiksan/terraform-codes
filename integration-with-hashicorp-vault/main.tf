provider "aws" {
    region = "us-east-1"
}

provider "vault" {
  address = "<your ec2 instance public ip address>:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "<your role id>"
      secret_id = "<your secret id>"
    }
  }
}

data "vault_kv_secret_v2" "example" {
  mount = "kv"
  name  = "test-kv"
}

resource "aws_instance" "test" {
    ami = "ami-04a81a99f5ec58529"
    instance_type = "t2.micro"
    tags = {
        secret = data.vault_kv_secret_v2.example.data["<Key-name>"]
    }  
}