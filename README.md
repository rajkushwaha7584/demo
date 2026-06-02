# 3-Tier Application Deployment on AWS using Terraform, ECR, ECS and CloudWatch

This project demonstrates the deployment of a containerized 3-tier application on AWS using Terraform and GitHub Actions CI/CD.

The infrastructure is provisioned using Terraform modules, including VPC, ECR, ECS Fargate, IAM, EC2, and CloudWatch. The Docker image is pulled from Docker Hub, tagged, and pushed to Amazon ECR through a GitHub Actions CI workflow. After the image is pushed, the CD workflow triggers a new ECS deployment, where ECS Fargate pulls the latest image from ECR and runs the containerized application.

CloudWatch is configured for ECS container logs and monitoring, helping to track application behavior and deployment status.

## Architecture Flow

```text
Terraform
   ↓
AWS VPC + ECR + ECS Fargate + CloudWatch
   ↓
GitHub Actions CI
   ↓
Docker Image Push to ECR
   ↓
GitHub Actions CD
   ↓
ECS Service Force New Deployment
   ↓
Application Running on ECS Fargate
   ↓
Logs and Monitoring in CloudWatch


AWS Services Used
Amazon VPC
Amazon ECR
Amazon ECS Fargate
AWS IAM
Amazon CloudWatch
Amazon EC2
CI/CD Flow
Code is pushed to the main branch.
GitHub Actions CI workflow runs.
Docker image is pulled from Docker Hub.
Image is tagged with the ECR repository URL.
Image is pushed to Amazon ECR.
CD workflow triggers after successful CI.
ECS service is updated using force new deployment.
ECS pulls the latest image from ECR.
Application runs on ECS Fargate.
Logs are available in CloudWatch.
Current Deployment Status

The infrastructure was successfully created using Terraform.

Created resources include:

VPC
Public and private subnets
ECR repository
ECS cluster
ECS Fargate service
ECS task definition
CloudWatch log group and alarm

The ECS task is running successfully, and the application is accessible through the ECS task public IP.

Terraform Commands
terraform fmt -recursive
terraform init
terraform validate
terraform plan
terraform apply
GitHub Actions Workflows
CI Workflow

The CI workflow is responsible for pushing the Docker image to Amazon ECR.

Docker Hub Image → Tag Image → Push to ECR
CD Workflow

The CD workflow is responsible for deploying the latest image to ECS.

ECR Image → ECS Service Update → New ECS Task Deployment
Project Purpose

The purpose of this project is to understand and implement a real-world AWS container deployment flow using Terraform and GitHub Actions. It follows a DevOps-style approach where infrastructure provisioning and application deployment are automated separately.

Future Improvements
Add Application Load Balancer for stable public access
Add RDS MySQL instead of running local database containers
Add ECS service autoscaling
Add better CloudWatch alarms for CPU and memory usage
Store sensitive values in AWS Secrets Manager

Short GitHub repo description ke liye ye use karo:

```text
3-tier application deployment on AWS using Terraform, ECR, ECS Fargate, CloudWatch, and GitHub Actions CI/CD.
