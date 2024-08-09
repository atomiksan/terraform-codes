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

