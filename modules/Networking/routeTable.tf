resource "aws_route_table" "publicroutingTable" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.TF_Ig.id
  }

  tags = {
    Name = "RouteTable_PubliSubnet"
  }

  depends_on = [
    aws_internet_gateway.TF_Ig
  ]


}

resource "aws_route_table" "priVateRoutingTable" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.NAT_GateWay.id
  }


  tags = {
    Name = "RouteTable_PrivateSubnet"
  }


  depends_on = [
    aws_nat_gateway.NAT_GateWay
  ]


}

