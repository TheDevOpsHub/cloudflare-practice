variable "region_us" {
  description = "AWS region for US infrastructure"
  default     = "us-east-1"
}

# variable "region_vn" {
#   description = "AWS region for Vietnam infrastructure"
#   default     = "ap-southeast-1"
# }

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  # https://us-east-1.console.aws.amazon.com/ec2/home?region=us-east-1#AMICatalog
  default     = "ami-0a0e5d9c7acc336f1" # Ubuntu 22.04
}

variable "ami_id_vn" {
  description = "AMI ID for EC2 instance"
  # https://ap-southeast-1.console.aws.amazon.com/ec2/home?region=ap-southeast-1#AMICatalog:
  default     = "ami-0497a974f8d5dcef8" # Ubuntu 22.04
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name_us" {
  description = "Name of the SSH key pair"
  default     = "ec2-us-demo-cloudflare"
}

# variable "key_name_vn" {
#   description = "Name of the SSH key pair"
#   default     = "ec2-vn-demo-cloudflare"
# }

# variable "vpc_id" {
#   description = "VPC ID for security group"
#   default     = "cloudflare-demo"
# }
