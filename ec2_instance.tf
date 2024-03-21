provider "aws" {
  region = "eu-west-1"
  access_key = "xxx"
  secret_key = "xxxx"
}


resource "aws_vpc" "default_vpc" {
  cidr_block = "172.31.0.0/16"
   tags = {
     Name = "default_vpc"
   }
}
resource "aws_instance" "test_ec2" {
  ami = "ami-074254c177d57d640"
  instance_type = "t2.micro"
  tags = {
    Name = "test_ec2"
  }
}
