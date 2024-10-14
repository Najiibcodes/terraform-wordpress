variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "name" {
  description = "Name of the subnet"
  type        = string
}
