resource "aws_subnet" "aws_public_subnet" {
  vpc_id                  = aws_vpc.main.id
  availability_zone = "ap-south-1b"
  cidr_block              = each.value
  map_public_ip_on_launch = true
  for_each                = var.public_subnet_range
  tags = {
    Name = "publicSubnet-${each.value}"
  }
}
resource "aws_subnet" "aws_private_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = each.value
  for_each   = var.private_subnet_range
  tags = {
    Name = "PrivateSubnet-${each.value}"
  }
}

