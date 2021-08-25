resource "aws_route_table_association" "Public_subnet_association" {
  for_each       = aws_subnet.aws_public_subnet
  subnet_id      = each.value.id
  route_table_id = aws_route_table.publicroutingTable.id
}

resource "aws_route_table_association" "Private_subnet_association" {
  for_each       = aws_subnet.aws_private_subnet
  subnet_id      = each.value.id
  route_table_id = aws_route_table.priVateRoutingTable.id
}

