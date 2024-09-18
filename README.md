# cloudflare-practice

Practice Cloudflare with AWS and Terraform

## Introduction

- Cloudflare: https://www.cloudflare.com/
- AWS: https://aws.amazon.com/
- Terraform: https://developer.hashicorp.com/terraform/docs

## Deploy AWS infra

### US server

```bash
cd us/web-server-us

terraform init

terraform plan

terraform apply
```

Note the public IP for later use

### VN server

```bash
cd vn/web-server-vn

terraform init

terraform plan

terraform apply
```

Note the public IP for later use

## Configure Cloudflare DNS and Load Balancer

- Log in to your Cloudflare account and ensure your domain is added and managed through Cloudflare.
- Set up the DNS records to point to your AWS EC2 instances.
- Steps:
  - Go to the DNS section in Cloudflare.
  - Add two A records for your domain/subdomain:
  - Vietnam Record: Point to the EC2 public IP from the AP-Southeast-1 instance.
  - US Record: Point to the EC2 public IP from the US-East-1 instance.

## Set Up Cloudflare Load Balancer for Geolocation Routing

- In the Traffic > Load Balancing section, create a load balancer that distributes traffic based on user location.
- Steps:
  - Create two pools: one for each region.
  - Vietnam Pool: Use the IP of the Vietnam EC2 instance.
  - US Pool: Use the IP of the US EC2 instance.
- Define geolocation routing rules:
  - Route Vietnam users to the Vietnam pool (AP-Southeast-1).
  - Route US users to the US pool (US-East-1).
- Set a fallback pool or global default if needed.

## Testing the Setup

- Use VPNs to simulate accessing the website from different regions (US and Vietnam).
- Verify that users from Vietnam are routed to the Vietnam instance (which displays "Welcome to the Vietnam infrastructure!") and US users are routed to the US instance.
