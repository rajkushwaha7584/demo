module "ecr" {
  source = "terraform-aws-modules/ecr/aws"

  repository_name = var.repository_name

  repository_force_delete = true

  repository_read_write_access_arns = var.repository_read_write_access_arns

  repository_lifecycle_policy = jsonencode({
    rules = [
      {
        rulePriority = 1
        description  = "Keep last 30 tagged images"

        selection = {
          tagStatus     = "tagged"
          tagPrefixList = ["v"]
          countType     = "imageCountMoreThan"
          countNumber   = 30
        }

        action = {
          type = "expire"
        }
      }
    ]
  })

  tags = {
    Terraform   = "true"
    Environment = var.environment
    Project     = var.project_name
  }
}