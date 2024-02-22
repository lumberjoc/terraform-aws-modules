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
  availability_zone = data.aws_availability_zones.available.names[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnet_names[count.index]
  }
}

# Internet Gateway

# Route Table

# Route Table Association 