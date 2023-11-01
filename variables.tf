variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "desired_tasks" {
  type    = number
  default = 1
}

variable "ecs_cluster" {
  type    = string
  default = ""
}

variable "task_definition" {
  type    = string
  default = ""
}

variable "subnet_a" {
  type    = string
  default = "subnet-09f98dc161f66365e"
}

variable "subnet_b" {
  type    = string
  default = "subnet-07b241673ed7ef73b"
}

variable "security_group_cluster_ecs" {
  type    = string
  default = "sg-0edc87891076d5402"
}

variable "target_group_arn" {
  type = string
  default = ""
}
