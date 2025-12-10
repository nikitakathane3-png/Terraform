provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-0d176f79571d18a8f"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.aws_sg.id]  # associating security group with instance

  user_data = <<-EOF
    #!/bin/bash
    sudo apt update -y
    sudo apt install nginx -y
    echo "<h1> Hello World </h1>" > /var/www/html/index.html
    EOF

  
  tags = {
    env = "dev"
  }
}

resource "aws_security_group" "aws_sg" {     # to create security group
  name        = "sg_name"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = vpc-0daf708179a1b94aa

    ingress {                               # inbound rule
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }

    egress {                               # outbound rule
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
    env = "dev"
  }
}