resource "aws_instance" "pub-instance" {
  ami                         = var.ami-id
  instance_type               = var.instancetype
  subnet_id                   = aws_subnet.sub[0].id
  vpc_security_group_ids      = [aws_security_group.sg1.id]
  associate_public_ip_address = true
  user_data                   = var.userdata

  tags = {
    Name = "pub-EC2-1"
  }
}

resource "aws_instance" "priv-instance" {
  ami                         = var.ami-id
  instance_type               = var.instancetype
  subnet_id                   = aws_subnet.sub[1].id
  vpc_security_group_ids      = [aws_security_group.sg1.id]
  user_data                   = var.userdata
  tags = {
    Name = "priv-EC2-2"
  }
}