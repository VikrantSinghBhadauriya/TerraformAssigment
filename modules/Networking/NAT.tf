resource "aws_eip" "elasticIp" {

  vpc = true
 tags = {
    Name = "TF_ElasticIP"
  }

}

resource "aws_nat_gateway" "NAT_GateWay" {
  allocation_id = aws_eip.elasticIp.id
  subnet_id     = aws_subnet.aws_public_subnet["192.168.1.0/24"].id


  tags = {
    Name = "gw_NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.TF_Ig]
}