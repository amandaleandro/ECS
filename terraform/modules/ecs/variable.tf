variable "cluster_name" {
  type        = string
  description = "The name of the ECS cluster"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of public subnet IDs"
}
variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "key_name" {
  description = "The name of the key pair"
  type        = string
}

variable "ecs_ami_id" {
  description = "The ID of the ECS AMI"
  type        = string
}
variable "security_group_id" {
  description = "The ID of the security group"
  type        = string
}