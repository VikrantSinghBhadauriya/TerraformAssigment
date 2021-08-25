
resource "aws_internet_gateway" "TF_Ig" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "TF_InternetGateway"
  }
}
