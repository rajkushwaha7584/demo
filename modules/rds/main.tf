# module "aurora" {
#   source = "terraform-aws-modules/rds-aurora/aws"

#   name           = var.db_name
#   engine         = var.db_engine
#   engine_version = var.db_engine_version

#   cluster_instance_class = var.db_instance_class

#   instances = {
#     one = {}
#   }

#   vpc_id  = var.vpc_id
#   subnets = var.private_subnets

#   security_group_ingress_rules = {
#     app_cidr_ingress = {
#       cidr_ipv4 = var.db_allowed_cidr
#     }
#   }

#   storage_encrypted = true
#   apply_immediately = true

#   enabled_cloudwatch_logs_exports = ["postgresql"]

#   tags = {
#     Terraform   = "true"
#     Environment = var.environment
#     Project     = var.project_name
#   }
# }