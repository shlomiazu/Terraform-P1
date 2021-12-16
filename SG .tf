resource "EM1_security_group" "allow_Port_For_ALB" {
  name        = "allow_tls"
  description = "Allow SSH,HTTPS inbound traffic"
  vpc_id      = EM1-VPC

  ingress {
    description      = "HTTPS incoming"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["192.168.0.0/16"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    description      = "SSH incoming"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["192.168.0.0/16"]
    ipv6_cidr_blocks = ["::/0"]
  }


  egress {
    description      = "HTTPS incoming"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_SSH_HTTPS"
  }
}