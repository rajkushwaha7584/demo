output "cloudwatch_alarm_id" {
  description = "CloudWatch alarm ID"
  value       = module.metric_alarm.cloudwatch_metric_alarm_id
}

output "cloudwatch_alarm_arn" {
  description = "CloudWatch alarm ARN"
  value       = module.metric_alarm.cloudwatch_metric_alarm_arn
}