output "vn_public_ip" {
  description = "Public IP of VN EC2 instance"
  value       = aws_instance.vn_instance.public_ip
}
