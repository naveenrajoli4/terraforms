resource "aws_instance" "my_instance" {
  ami                    = data.aws_ami.rhel9.id
  instance_type          = local.instncetype
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  tags = {
    Name    = local.servername
    Purpose = "terraform-practice"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and outbound traffic"

  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}