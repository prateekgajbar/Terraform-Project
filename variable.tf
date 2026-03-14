# ---------------------------
# AWS Region
# ---------------------------
variable "region" {
  default = "ap-south-1"
}

# ---------------------------
# VPC
# ---------------------------
variable "mumbai_vpc_cidr" {
  description = "CIDR of VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Name of VPC"
  type        = string
  default     = "My-vpc"
}

# ---------------------------
# Public Subnet
# ---------------------------
variable "public_cidr_block" {
  description = "Public Subnet CIDR block"
  type        = string
  default     = "10.0.0.0/20"
}

variable "public_available_zone" {
  description = "Availability zone for public subnet"
  type        = string
  default     = "ap-south-1a"
}

variable "public_subnet_name" {
  description = "Name of public subnet"
  type        = string
  default     = "public-subnet"
}

# ---------------------------
# Private Subnet
# ---------------------------
variable "private_cidr_block" {
  description = "Private Subnet CIDR block"
  type        = string
  default     = "10.0.16.0/20"
}

variable "private_available_zone" {
  description = "Availability zone for private subnet"
  type        = string
  default     = "ap-south-1b"
}

variable "private_subnet_name" {
  description = "Name of private subnet"
  type        = string
  default     = "private-subnet"
}

# ---------------------------
# Internet Gateway & NAT
# ---------------------------
variable "igw_name" {
  description = "Internet Gateway Name"
  type        = string
  default     = "my-igw"
}

variable "nat_name" {
  description = "NAT Gateway Name"
  type        = string
  default     = "my-ngw"
}

variable "nat_route_table_name" {
  description = "NAT Gateway route table name"
  type        = string
  default     = "NAT-tb"
}

# ---------------------------
# Security Group
# ---------------------------
variable "security_group_name" {
  description = "Name of Security Group"
  type        = string
  default     = "My-sg-1"
}

variable "description_sg" {
  description = "Description of Security Group"
  type        = string
  default     = "Allow SSH, HTTP, 8080 and MySQL traffic"
}

# variable "my_ip" {
#   description = "Your public IP for SSH access"
#   type        = string
#   default     = "YOUR_PUBLIC_IP/32"  # Replace with your real public IP
# }

# ---------------------------
# EC2 Instance
# ---------------------------
variable "image_instance" {
  description = "AMI of EC2 instance"
  type        = string
  default     = "ami-051a31ab2f4d498f5"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "instance_key" {
  description = "Key pair name for EC2"
  type        = string
  default     = "Ryzen"  # Key name in AWS (without .pem)
}

variable "public_instance_name" {
  description = "Public EC2 instance name"
  type        = string
  default     = "jump-server"
}

variable "private_instance_name" {
  description = "Private EC2 instance name"
  type        = string
  default     = "application-server"
}
