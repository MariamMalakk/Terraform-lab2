resource "aws_vpc" "vpc1" {

  cidr_block = var.vpc-cidr

  tags = {
    Name = "main"
  }

}
