module "iam_account" {
  source = "terraform-aws-modules/iam/aws//modules/iam-account"

  account_alias = var.account_alias

  max_password_age               = var.max_password_age
  minimum_password_length        = var.minimum_password_length
  require_uppercase_characters   = true
  require_lowercase_characters   = true
  require_numbers                = true
  require_symbols                = true
  password_reuse_prevention      = 3
  allow_users_to_change_password = true
}