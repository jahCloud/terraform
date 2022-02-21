

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-3"
  access_key = ENV_VAR_ACCESS_KEY
  secret_key = ENV_VAR_SECRET_KEY
}

# or use Assume Role: 
# provider "aws" {
#   assume_role {
#     role_arn     = "arn:aws:iam::ACCOUNT_ID:role/ROLE_NAME"
#     session_name = "SESSION_NAME"
#     external_id  = "EXTERNAL_ID"
#   }
# }


resource "aws_vpc" "VPC-terraform-MIKA" {
  cidr_block = "10.0.0.0/16"
}



resource "aws_instance" "my-EC2-instance-1" {
  ami = "ami-08cfb7b19d5cd546d"
  instance_type = "t2.micro"
  tags = {
    Name = "MIKADO-1"
  }
}

resource "aws_instance" "my-EC2-instance-2" {
  ami = "ami-08cfb7b19d5cd546d"
  instance_type = "t2.micro"
  tags = {
    Name = "MIKADO-2"
  }

}
