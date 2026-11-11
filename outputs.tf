output "vpc_id" {
  description = "ID of the project VPC"
  value       = aws_vpc.main.id
}

output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = aws_lb.app.dns_name
}

output "ec2_public_ip" {
  description = "Public IP address of the application server"
  value       = aws_instance.app.public_ip
}

output "rds_endpoint" {
  description = "Endpoint of the PostgreSQL database"
  value       = aws_db_instance.postgres.endpoint
}