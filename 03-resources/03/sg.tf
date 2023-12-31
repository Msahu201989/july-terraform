resource "aws_security_group" "allow_sssh" {
  name        = "allow_sssh"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-0aa9e93d9aea8a408"

  ingress {
    description      = "allow sssh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_sssh"
  }
}