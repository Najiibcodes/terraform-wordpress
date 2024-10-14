variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "internet_gateway_id" {
  description = "Internet Gateway ID"
  type        = string
}

variable "name" {
  description = "Name of the route table"
  type        = string
}
