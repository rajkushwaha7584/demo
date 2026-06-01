output "ec2_instance_id" {
  description = "EC2 instance ID"
  value       = module.ec2_instance.id
}

output "ec2_public_ip" {
  description = "EC2 public IP"
  value       = module.ec2_instance.public_ip
}

output "ec2_private_ip" {
  description = "EC2 private IP"
  value       = module.ec2_instance.private_ip
}

output "ec2_security_group_id" {
  description = "EC2 security group ID"
  value       = aws_security_group.ec2_sg.id
}