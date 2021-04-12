resource "aws_security_group" "asg-sec-group" {
  name        = "asg-sec-group"
  description = "Allo TLS inbound traffic"

  ingress {
    description = "TLC from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}
