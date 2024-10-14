resource "aws_subnet" "this" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr
  tags = {
    Name = var.name
  }
}

output "subnet_id" {
  value = aws_subnet.this.id
}
