output "ecs_cluster_name" {
  value = aws_ecs_cluster.example.name
}

output "ecs_service_name" {
  value = aws_ecs_service.clusterexempleEcs.name
}

output "ecs_task_definition_arn" {
  value = aws_ecs_task_definition.example.arn
}
