variable "aws_region" {
  description = "AWS region where the infrastructure will be deployed"
  type        = string
  default     = "ap-south-1"
}

variable "db_username" {
  description = "Username for the PostgreSQL database"
  type        = string
  default     = "appadmin"
}

variable "db_password" {
  description = "Password for the PostgreSQL database"
  type        = string
  sensitive   = true
}