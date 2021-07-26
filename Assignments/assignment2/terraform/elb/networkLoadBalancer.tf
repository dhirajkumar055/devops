resource "aws_elb" "network_lb"{
  name = "network-lb"
  availability_zones = ["ap-south-1a"]
  listener {
    instance_port = 80
    instance_protocol = "tcp"
    lb_port = 80
    lb_protocol = "tcp"
  }
}
