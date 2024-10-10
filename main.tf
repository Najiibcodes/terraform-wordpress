provider "aws" {
  region = "eu-west-2"
}

# Create VPC
resource "aws_vpc" "my_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}

# Create Subnet
resource "aws_subnet" "my_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.0.0/24"
}

# Create Security Group
resource "aws_security_group" "wordpress_sg" {
  vpc_id = aws_vpc.my_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "wordpress-security-group"
  }
}

# Create EC2 Instance
resource "aws_instance" "wordpress" {
  ami           = "ami-0b4c7755cdf0d9219"  
  instance_type = "t2.micro"
  key_name      = "Terraform"  
  subnet_id     = aws_subnet.my_subnet.id
  vpc_security_group_ids = [aws_security_group.wordpress_sg.id]  

  # Automate WordPress installation with cloud-init
  user_data = file("wordpress-cloud-init.sh")

  tags = {
    Name = "WordPress-Instance"
  }
}
