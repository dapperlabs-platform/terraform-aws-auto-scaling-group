# AWS Auto Scaling Group Terraform module

Terraform module which creates VPC resources on AWS.

## Usage
```hcl
module "demo-asg" {
  source               = "./modules/auto-scaling-group"
  launch_configuration = aws_launch_configuration.demo-launch-config.id
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = var.public_subnets
  asg_name             = var.asg-name
}
```