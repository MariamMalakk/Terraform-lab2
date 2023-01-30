resource "aws_security_group" "sg1" {
  name        = "SG1"
  description = "Allow http,ssh"
  vpc_id      = aws_vpc.vpc1.id

  ingress {
    description = "http from VPC"
    from_port   = var.httpport
    to_port     = var.httpport
    protocol    = var.protocoltcp
    cidr_blocks = var.sg-cider
  }
  ingress {
    description = "ssh from VPC"
    from_port   = var.sshport
    to_port     = var.sshport
    protocol    = var.protocoltcp
    cidr_blocks = var.sg-cider
  }


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.sg-cider
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_http"
  }
}

