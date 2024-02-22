# VPC 
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cider
  instance_tenancy = "default"
}
# Subnets
resource "aws_subnet" "subnets" {
  count = length(var.subnet_cidr)
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr[count.index]

  tags = {
    Name = "Main"
  }
}
# Internet Gateway

# Route Table

# Route Table Association 