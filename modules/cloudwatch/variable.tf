variable "alarm_name" {
  description = "CloudWatch alarm name"
  type        = string
}

variable "alarm_description" {
  description = "CloudWatch alarm description"
  type        = string
}

variable "comparison_operator" {
  description = "Comparison operator for alarm"
  type        = string
}

variable "evaluation_periods" {
  description = "Number of evaluation periods"
  type        = number
}

variable "threshold" {
  description = "Alarm threshold"
  type        = number
}

variable "period" {
  description = "Alarm period in seconds"
  type        = number
}

variable "unit" {
  description = "Metric unit"
  type        = string
}

variable "namespace" {
  description = "CloudWatch metric namespace"
  type        = string
}

variable "metric_name" {
  description = "CloudWatch metric name"
  type        = string
}

variable "statistic" {
  description = "Metric statistic"
  type        = string
}

variable "alarm_actions" {
  description = "SNS topic ARNs for alarm actions"
  type        = list(string)
  default     = []
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}