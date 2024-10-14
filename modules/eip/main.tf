resource "aws_eip" "this" {
  domain   = "vpc"
  instance = var.instance_id  

  tags = {
    Name = var.name
  }
}

output "public_ip" {
  value = aws_eip.this.public_ip
}
