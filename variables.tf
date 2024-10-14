variable "region" {
  description = "AWS Region"
  type        = string
  default     = "eu-west-2"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "Subnet CIDR block"
  type        = string
  default     = "10.0.1.0/24"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami" {
  description = "Amazon Machine Image ID"
  type        = string
  default     = "ami-0b4c7755cdf0d9219"
}

variable "vpc_name" {
  description = "Name for the VPC"
  type        = string
  default     = "wordpress-vpc"
}

variable "subnet_name" {
  description = "Name for the subnet"
  type        = string
  default     = "wordpress-subnet"
}

variable "sg_name" {
  description = "Name for the security group"
  type        = string
  default     = "wordpress-sg"
}

variable "user_data" {
  description = "Path to cloud-init script"
  type        = string
  default     = "wordpress-cloud-init.sh"  
}



variable "eip_name" {
  description = "Name for the Elastic IP"
  type        = string
  default     = "wordpress-eip"
}

variable "igw_name" {
  description = "Name for the Internet Gateway"
  type        = string
  default     = "wordpress-igw"
}

variable "route_table_name" {
  description = "Name for the Route Table"
  type        = string
  default     = "wordpress-route-table"
}
