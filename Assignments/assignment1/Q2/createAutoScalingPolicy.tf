resource "aws_autoscaling_policy" "myASGpolicyUP" {
  name                   = "myASGpolicyUP"
  scaling_adjustment     = "1"
  adjustment_type        = "ChangeInCapacity"
  cooldown               = "300"
  autoscaling_group_name = aws_autoscaling_group.myASG.name
}


resource "aws_autoscaling_policy" "myASGpolicyDown" {
  name                   = "myASGpolicyDown"
  scaling_adjustment     = "-1"
  adjustment_type        = "ChangeInCapacity"
  cooldown               = "300"
  autoscaling_group_name = aws_autoscaling_group.myASG.name
}

