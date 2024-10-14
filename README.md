# Terraform WordPress Deployment

Deploy a WordPress instance on AWS using modular and DRY Terraform code.

## Key Features

- **Modular Structure**: Reusable modules for VPC, EC2, security groups, and other AWS resources, demonstrating efficient infrastructure management.
- **DRY Code**: Utilises variables and modules to minimise redundancy, showcasing clean, maintainable code that adheres to best practices.
- **Cloud-Init Automation**: Automates the setup of Apache, PHP, and MariaDB to fully deploy WordPress, illustrating proficiency in server automation.

## Technical Highlights

- **Best Practices**: Implements infrastructure as code using Terraform, with a focus on modular, scalable, and reusable design patterns.
- **Scalable Networking**: Configures VPCs, subnets, routing tables, and security groups to create an isolated and secure networking environment.
- **Automated Resource Management**: Resources like EC2, EIPs, and RDS are automated to ensure quick and consistent deployments, reducing manual intervention.

## Quick Start

```bash
terraform init
terraform apply

