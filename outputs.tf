output "us_public_ip" {
  description = "Public IP of US EC2 instance"
  value       = aws_instance.us_instance.public_ip
}

output "vn_public_ip" {
  description = "Public IP of Vietnam EC2 instance"
  value       = aws_instance.vn_instance.public_ip
}
