variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
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
  default     = ["ap-south-1a", "ap-south-1b"]
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
variable "container_name" {
  description = "ECS container name"
  type        = string
  default     = "three-tier-app"
}

variable "container_port" {
  description = "Application container port"
  type        = number
  default     = 3000
}

variable "app_allowed_cidr" {
  description = "CIDR allowed to access ECS app"
  type        = string
  default     = "0.0.0.0/0"
}

variable "task_cpu" {
  description = "Fargate task CPU"
  type        = number
  default     = 256
}

variable "task_memory" {
  description = "Fargate task memory"
  type        = number
  default     = 512
}

variable "desired_count" {
  description = "Number of ECS tasks"
  type        = number
  default     = 1
}
#==================================
# variable "db_name" {
#   description = "Aurora cluster name"
#   type        = string
#   default     = "three-tier-db"
# }

# variable "db_database_name" {
#   description = "Initial database name"
#   type        = string
#   default     = "appdb"
# }

# variable "db_engine" {
#   description = "Aurora database engine"
#   type        = string
#   default     = "aurora-mysql"
# }

# variable "db_engine_version" {
#   description = "Aurora MySQL version"
#   type        = string
#   default     = "8.0.mysql_aurora.3.05.2"
# }

# variable "db_instance_class" {
#   description = "Aurora DB instance class"
#   type        = string
#   default     = "db.t3.medium"
# }

# variable "db_username" {
#   description = "Database master username"
#   type        = string
#   default     = "admin"
# }

# variable "db_password" {
#   description = "Database master password"
#   type        = string
#   sensitive   = true
#   default     = "Admin12345678"
# }

# variable "db_allowed_cidr" {
#   description = "CIDR allowed to connect to RDS"
#   type        = string
#   default     = "10.0.0.0/16"
# }
#=============================================
variable "alarm_name" {
  description = "CloudWatch alarm name"
  type        = string
  default     = "three-tier-app-errors"
}

variable "alarm_description" {
  description = "CloudWatch alarm description"
  type        = string
  default     = "Alarm when application error count is high"
}

variable "comparison_operator" {
  description = "Comparison operator"
  type        = string
  default     = "GreaterThanOrEqualToThreshold"
}

variable "evaluation_periods" {
  description = "Evaluation periods"
  type        = number
  default     = 1
}

variable "threshold" {
  description = "Alarm threshold"
  type        = number
  default     = 10
}

variable "period" {
  description = "Alarm period in seconds"
  type        = number
  default     = 60
}

variable "unit" {
  description = "Metric unit"
  type        = string
  default     = "Count"
}

variable "namespace" {
  description = "CloudWatch metric namespace"
  type        = string
  default     = "MyApplication"
}

variable "metric_name" {
  description = "CloudWatch metric name"
  type        = string
  default     = "ErrorCount"
}

variable "statistic" {
  description = "Metric statistic"
  type        = string
  default     = "Maximum"
}

variable "alarm_actions" {
  description = "SNS topic ARNs for alarm notification"
  type        = list(string)
  default     = []
}