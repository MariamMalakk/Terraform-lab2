resource "aws_subnet" "sub" {
  count = 2
  vpc_id                  = aws_vpc.vpc1.id
  cidr_block              = var.sub-cidr[count.index]
  map_public_ip_on_launch = var.map_public_ip_on_launch[count.index]

  tags = {
    Name = var.subnetsname[count.index]
  }
}