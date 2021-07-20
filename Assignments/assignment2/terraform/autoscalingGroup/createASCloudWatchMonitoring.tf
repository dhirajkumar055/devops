resource "aws_cloudwatch_metric_alarm" "myMetricAlarmUP" {
  alarm_name          = "myMetricAlarmUP"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "300"
  statistic           = "Average"
  threshold           = "50"

  dimensions = {
    AutoScalingGroupName = aws_autoscaling_group.myASG.name
  }

  alarm_description = "This metric monitors ec2 cpu utilization"
  actions_enabled = true
  alarm_actions     = [aws_autoscaling_policy.myASGpolicyUP.arn]
}


resource "aws_cloudwatch_metric_alarm" "myMetricAlarmDown" {
  alarm_name          = "myMetricAlarmDown"
  comparison_operator = "LessThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "300"
  statistic           = "Average"
  threshold           = "10"

  dimensions = {
    AutoScalingGroupName = aws_autoscaling_group.myASG.name
  }

  alarm_description = "This metric monitors ec2 cpu utilization decreases"
  actions_enabled = true
  alarm_actions     = [aws_autoscaling_policy.myASGpolicyDown.arn]
}

