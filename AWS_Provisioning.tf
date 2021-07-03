provider "aws" {
  region     = "us-east-2"
  access_key = "AKIASOREUQBYX5A56TFB"
  secret_key = "5DQMrSFrmNi8oztxK1n046MmG20/2uMf3GyQfHbn"
}

resource "aws_instance" "example" {
ami = "ami-0f052119b3c7e61d1"
instance_type = "t2.micro"

tags = {
  Name = "SUSE_15"
}
}
