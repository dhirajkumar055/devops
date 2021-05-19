provider "aws" {
 access_key = var.AWS_ACCESS_KEY
 secret_key = var.AWS_SECRET_KEY
 region = "ap-south-1"
}

resource "aws_launch_configuration" "myLC" {
  name          = "web_config"
  image_id      = "ami-0c1a7f89451184c8b"
  instance_type = "t2.micro"
  key_name = "dheeraj"
  security_groups = [aws_security_group.allowSShHttps.name]
}
