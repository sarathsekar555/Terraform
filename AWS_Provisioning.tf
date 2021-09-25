provider "aws" {
  region     = "us-east-2"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "example" {
ami = "ami-0f052119b3c7e61d1"
instance_type = "t2.micro"

tags = {
  Name = "SUSE_15"
}
}
