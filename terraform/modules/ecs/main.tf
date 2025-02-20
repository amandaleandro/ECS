resource "aws_ecs_cluster" "example" {
  name = var.cluster_name
}

resource "aws_ecs_task_definition" "example" {
  family                   = "my-task-family"
  container_definitions    = jsonencode([{
    name      = "my-container"
    image     = "nginx"
    cpu       = 256
    memory    = 512
    essential = true
  }])

  requires_compatibilities = ["EC2"]
  network_mode             = "bridge"
}

resource "aws_ecs_service" "clusterexempleEcs" {
  name            = "my-ecs-service"
  cluster         = aws_ecs_cluster.example.id
  task_definition = aws_ecs_task_definition.example.arn

  desired_count   = 1

  launch_type = "EC2"
}