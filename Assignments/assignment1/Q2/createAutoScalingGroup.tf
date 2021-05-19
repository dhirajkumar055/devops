
resource "aws_autoscaling_group" "myASG"{
  name = "myASG"
  availability_zones = ["ap-south-1a"]
  max_size = 2
  min_size = 1
  launch_configuration = aws_launch_configuration.myLC.name
    
}
