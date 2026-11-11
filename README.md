# Two-Tier AWS Infrastructure with Terraform

Infrastructure as Code project that provisions a two-tier AWS architecture using Terraform.

## Architecture

The project is designed around a secure two-tier architecture consisting of:

- Amazon VPC
- Public and private subnets
- Internet Gateway
- Route tables
- Security Groups
- EC2 application infrastructure
- Application Load Balancer
- Amazon RDS PostgreSQL

Traffic is designed to flow through the Application Load Balancer to the application tier, while the database remains in private subnets and is not directly exposed to the internet.

See the [architecture documentation](docs/architecture.md) for the architecture diagram and request flow.

## Technologies

- AWS
- Terraform
- Amazon VPC
- Amazon EC2
- Application Load Balancer
- Amazon RDS PostgreSQL
- AWS Security Groups
- Git
- GitHub

## Project Structure

```text
.
├── docs/
│   ├── architecture.md
│   └── screenshots/
│
├── compute.tf
├── database.tf
├── internet.tf
├── load-balancer.tf
├── main.tf
├── outputs.tf
├── provider.tf
├── security-groups.tf
├── subnets.tf
├── variables.tf
├── versions.tf
├── terraform.tfvars.example
├── .gitignore
└── .terraform.lock.hcl