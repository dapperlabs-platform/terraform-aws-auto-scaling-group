variable "launch_configuration" {
  type = string
}

variable "vpc_zone_identifier" {
  type = list(string)
}

variable "min_size" {
  type = number
}
variable "max_size" {
  type = number
}

variable "asg_name" {
  type = string
}
