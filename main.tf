provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"

  vpc_name        = var.vpc_name
  vpc_cidr        = var.vpc_cidr
  azs             = var.azs
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  environment     = var.environment
  project_name    = var.project_name
}
#===========================
module "ec2" {
  source = "./modules/ec2"

  instance_name = var.instance_name
  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_id    = module.vpc.vpc_id
  subnet_id = module.vpc.public_subnets[0]

  ssh_allowed_cidr  = var.ssh_allowed_cidr
  http_allowed_cidr = var.http_allowed_cidr

  environment  = var.environment
  project_name = var.project_name
}
#=========================
module "ecr" {
  source = "./modules/ecr"

  repository_name = var.ecr_repository_name

  repository_read_write_access_arns = var.repository_read_write_access_arns

  environment  = var.environment
  project_name = var.project_name
}
#============================
module "iam" {
  source = "./modules/iam"

  account_alias           = var.account_alias
  max_password_age        = var.max_password_age
  minimum_password_length = var.minimum_password_length
}
#=============================
# module "rds" {
#   source = "./modules/rds"

#   db_name           = var.db_name
#   db_engine         = var.db_engine
#   db_engine_version = var.db_engine_version
#   db_instance_class = var.db_instance_class

#   vpc_id          = module.vpc.vpc_id
#   private_subnets = module.vpc.private_subnets
#   db_allowed_cidr = var.db_allowed_cidr

#   environment  = var.environment
#   project_name = var.project_name
# }
