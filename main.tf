provider "aws" {
  region = var.region_us
}

provider "aws" {
  alias  = "vn"
  region = var.region_vn
}

# # Include instance and security group definitions
# module "us_instance" {
#   source = "./us_instance.tf"
# }

# module "vn_instance" {
#   source = "./vn_instance.tf"
# }

# module "security_group" {
#   source = "./security_group.tf"
# }
