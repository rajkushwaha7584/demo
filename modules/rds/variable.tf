variable "db_name" {
  description = "Aurora cluster name"
  type        = string
}

variable "db_engine" {
  description = "Aurora database engine"
  type        = string
}

variable "db_engine_version" {
  description = "Aurora engine version"
  type        = string
}

variable "db_instance_class" {
  description = "Aurora DB instance class"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where RDS will be created"
  type        = string
}

variable "private_subnets" {
  description = "Private subnet IDs for RDS"
  type        = list(string)
}

variable "db_allowed_cidr" {
  description = "CIDR allowed to connect to RDS"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}