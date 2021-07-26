provider "aws" {
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  region     = "ap-south-1"
}

resource "aws_lb_target_group" "TargetGroupGames" {
  name     = "TargetGroupGames"
  port = "80"
  protocol = "TCP"
  vpc_id   = var.vpcid
}

