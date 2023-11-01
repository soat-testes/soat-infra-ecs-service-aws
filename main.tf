provider "aws" {
  region = var.aws_region
}

resource "aws_ecs_service" "ecs_service_api_soat" {
  name                              = "ecs-service-api-soat"
  cluster                           = var.ecs_cluster
  task_definition                   = var.task_definition
  launch_type                       = "FARGATE"
  platform_version                  = "1.4.0"
  desired_count                     = var.desired_tasks
  health_check_grace_period_seconds = 30

  network_configuration {
    subnets = [
      var.subnet_a,
      var.subnet_b
    ]
    security_groups  = [var.security_group_cluster_ecs]
    assign_public_ip = false
  }

  load_balancer {
    target_group_arn = var.target_group_arn
    container_name   = "container-1"
    container_port   = 8080
  }

  tags = {
    infra = "ecs-service-api"
  }
}