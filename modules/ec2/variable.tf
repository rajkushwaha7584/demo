variable "instance_name" {
  description = "EC2 instance name"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "Existing AWS key pair name"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where EC2 will be created"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for EC2 security group"
  type        = string
}

variable "ssh_allowed_cidr" {
  description = "CIDR allowed for SSH access"
  type        = string
}

variable "http_allowed_cidr" {
  description = "CIDR allowed for HTTP access"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}