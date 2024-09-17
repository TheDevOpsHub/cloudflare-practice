variable "region_us" {
  description = "AWS region for US infrastructure"
  default     = "us-east-1"
}

variable "region_vn" {
  description = "AWS region for Vietnam infrastructure"
  default     = "ap-southeast-1"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  default     = "ami-0c55b159cbfafe1f0"  # Replace with correct AMI ID
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of the SSH key pair"
}

variable "vpc_id" {
  description = "VPC ID for security group"
}
