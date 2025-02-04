variable "ingress_port" {
    default = [
    {
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    },
     {
    from_port   = "8080"
    to_port     = "808"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    },
     {
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }

 ]
}

variable "egress_port" {
    default = [
    {
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    },
     {
    from_port   = "11"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    },
     {
    from_port   = "33"
    to_port     = "44"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }

 ]
}