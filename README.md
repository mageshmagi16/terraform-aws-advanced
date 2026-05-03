# Terraform AWS Advanced Project

##  Overview
This project demonstrates how to automate AWS infrastructure using Terraform.  
Instead of manually creating resources in AWS, everything is defined using code using Infrastructure as Code (IaC).

---

##  What I Built

In this project, I created a complete AWS infrastructure:

-  VPC (Virtual Private Cloud - private network)
-  Subnets (multiple zones for high availability)
-  Security Groups (firewall rules)
-  EC2 Instance (server)
-  Application Load Balancer (traffic distribution)
-  IAM Role (permissions management)
-  S3 Bucket (storage)
-  Remote State (S3 backend for Terraform state)

---

## Project Structure

terraform-aws-advanced/
provider.tf
variables.tf
main.tf
outputs.tf
backend.tf
modules/
    vpc/
         main.tf
         variables.tf
         outputs.tf
│   │
│   ├── ec2/
│   ├── alb/
│   ├── security_group/
│   ├── iam/
│   └── s3/
│
└── .github/
    └── workflows/
        └── terraform.yml

---

## Prerequisites

- Terraform installed
- AWS CLI installed
- AWS account
- IAM user with access key and secret key

---

## Setup Instructions

1. Configure AWS CLI  
aws configure  

2. Initialize Terraform  
terraform init  

3. Preview Infrastructure  
terraform plan  

4. Create Infrastructure  
terraform apply  

---

## Outputs

- Load Balancer DNS  
- EC2 Public IP  
- S3 Bucket Name  

---

## Testing

- Open Load Balancer DNS in browser  
- Check EC2 instance in AWS  
- Verify S3 bucket  

---

## Cleanup (IMPORTANT)

terraform destroy  

---

## Important Notes

- Backend S3 bucket must be created manually
- Bucket names must be unique
- Do NOT upload .terraform and tfstate files

---

## Challenges Faced & Solutions

- Load balancer needed multiple subnets → fixed by multi-AZ setup  
- Module output issue → fixed using outputs  
- Dependency issue → fixed ordering  

---

## What I Learned

- Infrastructure as Code  
- Terraform workflow  
- Modular design  
- AWS networking & security  
- Debugging  

---

## CI/CD

GitHub Actions runs Terraform automatically (init + plan)

---

## .gitignore

.terraform/  
*.tfstate  
*.tfstate.backup  

---

## Simple Summary

I used Terraform to automate AWS infrastructure, created network, server, security, load balancer, and storage using code, solved errors, tested, and cleaned up.

---

## Future Improvements

- Auto Scaling  
- Monitoring  
- CI/CD pipeline  
- Database  

---
