resource "aws_security_group" "allowSShHttps" {
  name = "allowSShHttps"

  ingress {
   from_port = 22
   to_port = 22
   protocol = "tcp"
   cidr_blocks = ["103.152.159.111/32"]
 }

  egress {
   from_port = 22
   to_port = 22
   protocol = "tcp"
   cidr_blocks = ["103.152.159.111/32"]
 }
  ingress {
   from_port = 80
   to_port = 80
   protocol = "tcp"
   cidr_blocks = ["103.152.159.111/32"]
 }

  egress {
   from_port = 80
   to_port = 80
   protocol = "tcp"
   cidr_blocks = ["103.152.159.111/32"]
 }

  ingress {
   from_port = 443
   to_port = 443
   protocol = "tcp"
   cidr_blocks = ["103.152.159.111/32"]
 }

  egress {
   from_port = 443
   to_port = 443
   protocol = "tcp"
   cidr_blocks = ["103.152.159.111/32"]
 }

}
