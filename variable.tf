variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-2"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "3tier"
}
#================================
variable "vpc_name" {
  description = "VPC name"
  type        = string
  default     = "three-tier-vpc"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "Availability zones"
  type        = list(string)
  default     = ["ap-south-2a", "ap-south-2b"]
}

variable "public_subnets" {
  description = "Public subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "private_subnets" {
  description = "Private subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}
#==========================================================

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-0f918f7e67a3323f0"
}

variable "instance_name" {
  description = "EC2 instance name"
  type        = string
  default     = "three-tier-ec2"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Existing AWS key pair name"
  type        = string
  default     = "user1"
}

variable "ssh_allowed_cidr" {
  description = "CIDR allowed for SSH"
  type        = string
  default     = "0.0.0.0/0"
}

variable "http_allowed_cidr" {
  description = "CIDR allowed for HTTP"
  type        = string
  default     = "0.0.0.0/0"
}
#===================
variable "ecr_repository_name" {
  description = "ECR repository name"
  type        = string
  default     = "three-tier-app"
}

variable "repository_read_write_access_arns" {
  description = "IAM ARNs allowed to read/write ECR repository"
  type        = list(string)
  default     = []
}
#===================
variable "account_alias" {
  description = "AWS account alias"
  type        = string
  default     = "three-tier-dev-account"
}

variable "max_password_age" {
  description = "Maximum password age in days"
  type        = number
  default     = 90
}

variable "minimum_password_length" {
  description = "Minimum password length"
  type        = number
  default     = 24
}
#==================================
variable "db_name" {
  description = "Aurora cluster name"
  type        = string
  default     = "three-tier-db"
}

variable "db_engine" {
  description = "Aurora database engine"
  type        = string
  default     = "aurora-postgresql"
}

variable "db_engine_version" {
  description = "Aurora PostgreSQL version"
  type        = string
  default     = "15.4"
}

variable "db_instance_class" {
  description = "Aurora DB instance class"
  type        = string
  default     = "db.t3.medium"
}

variable "db_allowed_cidr" {
  description = "CIDR allowed to connect to RDS"
  type        = string
  default     = "10.0.0.0/16"
}