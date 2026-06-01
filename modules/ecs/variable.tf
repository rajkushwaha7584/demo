variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for ECS security group"
  type        = string
}

variable "public_subnets" {
  description = "Public subnet IDs for ECS service"
  type        = list(string)
}

variable "container_name" {
  description = "Container name"
  type        = string
}

variable "container_image" {
  description = "Container image URL"
  type        = string
}

variable "container_port" {
  description = "Container application port"
  type        = number
}

variable "app_allowed_cidr" {
  description = "CIDR allowed to access ECS application"
  type        = string
}

variable "task_cpu" {
  description = "Fargate task CPU"
  type        = number
}

variable "task_memory" {
  description = "Fargate task memory"
  type        = number
}

variable "desired_count" {
  description = "Number of ECS tasks"
  type        = number
}