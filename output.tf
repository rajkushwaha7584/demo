output "vpc_id" {
  description = "VPC ID from VPC module"
  value       = module.vpc.vpc_id
}

output "public_subnets" {
  description = "Public subnet IDs from VPC module"
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "Private subnet IDs from VPC module"
  value       = module.vpc.private_subnets
}
#====================================
output "ec2_instance_id" {
  description = "EC2 instance ID"
  value       = module.ec2.ec2_instance_id
}

output "ec2_public_ip" {
  description = "EC2 public IP"
  value       = module.ec2.ec2_public_ip
}

output "ec2_private_ip" {
  description = "EC2 private IP"
  value       = module.ec2.ec2_private_ip
}
#=====================
output "ecr_repository_name" {
  description = "ECR repository name"
  value       = module.ecr.ecr_repository_name
}

output "ecr_repository_url" {
  description = "ECR repository URL"
  value       = module.ecr.ecr_repository_url
}

output "ecr_repository_arn" {
  description = "ECR repository ARN"
  value       = module.ecr.ecr_repository_arn
}
#========================
output "account_alias" {
  description = "AWS account alias"
  value       = module.iam.account_alias
}
#========================
output "ecs_cluster_name" {
  description = "ECS cluster name"
  value       = module.ecs.ecs_cluster_name
}

output "ecs_service_name" {
  description = "ECS service name"
  value       = module.ecs.ecs_service_name
}

output "ecs_task_definition_arn" {
  description = "ECS task definition ARN"
  value       = module.ecs.ecs_task_definition_arn
}

output "ecs_security_group_id" {
  description = "ECS security group ID"
  value       = module.ecs.ecs_security_group_id
}
#========================
# output "rds_cluster_id" {
#   description = "RDS Aurora cluster ID"
#   value       = module.rds.rds_cluster_id
# }

# output "rds_cluster_endpoint" {
#   description = "RDS Aurora writer endpoint"
#   value       = module.rds.rds_cluster_endpoint
# }

# output "rds_cluster_reader_endpoint" {
#   description = "RDS Aurora reader endpoint"
#   value       = module.rds.rds_cluster_reader_endpoint
# }

# output "rds_cluster_port" {
#   description = "RDS Aurora port"
#   value       = module.rds.rds_cluster_port
# }
#=======================================================
output "cloudwatch_alarm_id" {
  description = "CloudWatch alarm ID"
  value       = module.cloudwatch.cloudwatch_alarm_id
}

output "cloudwatch_alarm_arn" {
  description = "CloudWatch alarm ARN"
  value       = module.cloudwatch.cloudwatch_alarm_arn
}