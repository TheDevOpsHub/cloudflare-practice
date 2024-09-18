output "us_public_ip" {
  description = "Public IP of US EC2 instance"
  value       = aws_instance.us_instance.public_ip
}
