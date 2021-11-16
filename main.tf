resource "aws_autoscaling_group" "this" {
  name                 = var.asg_name
  launch_configuration = var.launch_configuration
  vpc_zone_identifier  = var.vpc_zone_identifier

  max_size = var.min_size
  min_size = var.max_size

  tag {
    key                 = "Name"
    value               = var.asg_name
    propagate_at_launch = true
  }

  lifecycle {
    create_before_destroy = true
  }
}
