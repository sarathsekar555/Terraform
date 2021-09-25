provider "aws" {
  region = "us-east-2"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "test" {
  count = 3
  ami = "ami-0f052119b3c7e61d1"
  instance_type = "t2.micro"

tags = {
  Name = "SUSE-15"
}
}

resource "aws_key_pair" "deployer" {
  key_name = "deployer_key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC6Jrzfd15UMHvSibiuYP9dX2qoR1Mr+vgaTeBCRPUzuFGqSvosOe4d8aICKNmpJjlbCMLeUQnwHVHEprYuYjMRHxr3e2V3meDlSSZ0romIGVhdOmQy68I1B8KvM6o8/+OfO2CrU0CswqXqn9B3YkJj9vlRb/rVkQzy1WnHUELb2yfMTpgAbMBNDFgTGtUl8IyHBeOylnUBPUN7vx88i3b5hP8SMR3XtJx9Nu14MKBne5cBzj1naDoaaPxo7IwoSLbiriaF0rrvYx2kV9duljdQ2FXDuYIcVT4MqP3O7+tr154YtfE0ZCG/dcJXrYx79Z8Ur/pV6ORbYr6UohSko3idDE8IBnsIMShoA5zheWGsT27dRUK+9JAPcrcGQH/BaZTIP7Yu+sgugk4jfG74+w/zYAZ5BdSvqlcPlDKBqPykuzjf4HEg8SW627ma9LPkjCcZ0UKemMSjleZmYo2XMPr0OYDoldBwZQcU+hrNKF3Io49j3PeOx/92+cAYIo/kRYM= admin@DESKTOP-RJMBPLL"
}
