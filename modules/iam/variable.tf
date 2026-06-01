variable "account_alias" {
  description = "AWS account alias"
  type        = string
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