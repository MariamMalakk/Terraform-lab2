resource "aws_nat_gateway" "nat1" {
  allocation_id = aws_eip.eip1.id
  subnet_id     = aws_subnet.sub[0].id

  tags = {
    Name = "nat-gw-1"
  }

}

resource "aws_eip" "eip1" {
    tags={
      Name= "el-ip-1"
    }

}