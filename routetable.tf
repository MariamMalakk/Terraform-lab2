resource "aws_route_table" "pub-RT1" {
  vpc_id = aws_vpc.vpc1.id

  route {
    cidr_block = var.cider-block-rt1
    gateway_id = aws_internet_gateway.igw1.id
  }

  tags = {
    Name = "RT1"
  }
}

resource "aws_route_table_association" "pubsub-association" {
  subnet_id      = aws_subnet.sub[0].id
  route_table_id = aws_route_table.pub-RT1.id
}
