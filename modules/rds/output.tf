output "rds_cluster_id" {
  description = "RDS Aurora cluster ID"
  value       = module.aurora.cluster_id
}

output "rds_cluster_endpoint" {
  description = "RDS Aurora writer endpoint"
  value       = module.aurora.cluster_endpoint
}

output "rds_cluster_reader_endpoint" {
  description = "RDS Aurora reader endpoint"
  value       = module.aurora.cluster_reader_endpoint
}

output "rds_cluster_port" {
  description = "RDS Aurora port"
  value       = module.aurora.cluster_port
}