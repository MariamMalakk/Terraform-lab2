resource "aws_route_table" "priv-RT1" {
  vpc_id = aws_vpc.vpc1.id

  route {
    cidr_block = var.cider-block-rt1
    gateway_id = aws_nat_gateway.nat1.id
  }

  tags = {
    Name = "priv-RT1"
  }
}

resource "aws_route_table_association" "privsub-association" {
  subnet_id      = aws_subnet.sub[1].id
  route_table_id = aws_route_table.priv-RT1.id
}
