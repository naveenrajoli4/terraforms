resource "aws_instance" "my_instance" {
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  tags = {
    Name    = "serverTF"
    Purpose = "terraform-practice"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and outbound traffic"

  dynamic "ingress" { # Terraform will give you a keyword with the block name. You can iterate using ingress.
    for_each = var.ingress_port
    content {
    from_port   = ingress.value["from_port"]
    to_port     = ingress.value["to_port"]
    protocol    = ingress.value["protocol"]
    cidr_blocks = ingress.value["cidr_blocks"]
    }
  }

  dynamic "egress" {
    for_each = var.egress_port
    content {
    from_port   = egress.value["from_port"]
    to_port     = egress.value["to_port"]
    protocol    = egress.value["protocol"]
    cidr_blocks = egress.value["cidr_blocks"]
    }
  }

  tags = {
    Name = "allow_tls"
  }
}