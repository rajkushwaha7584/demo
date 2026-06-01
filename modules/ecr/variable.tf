variable "repository_name" {
  description = "ECR repository name"
  type        = string
}

variable "repository_read_write_access_arns" {
  description = "IAM ARNs allowed to read/write ECR repository"
  type        = list(string)
  default     = []
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}