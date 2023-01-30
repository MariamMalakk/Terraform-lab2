vpc-cidr = "10.0.0.0/16"
vpc-region = "us-east-1"

sub-cidr = ["10.0.0.0/24", "10.0.1.0/24"]

subnetsname=["public-sub", "priv-sub"]
map_public_ip_on_launch = ["true", "false"]


cider-block-rt1 = "0.0.0.0/0"

ami-id = "ami-00874d747dde814fa"

instancetype = "t2.micro"

userdata = <<-EOF
    #!/bin/bash
    sudo apt update -y
    sudo apt install -y nginx
    sudo service nginx start
    EOF

httpport = 80
protocoltcp = "tcp"
sshport= 22
sg-cider = ["0.0.0.0/0"]