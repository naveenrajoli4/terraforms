variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This is RHEL9 ami_id"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "This is RHEL9 Instance type"
}

variable "ec2_tags" {
  type = map(any)
  default = {
    Name        = "tfserver"
    Project     = "expence"
    comounent   = "backend"
    Environment = "dev/prod/uat"
  }
}

variable "from_to_port" {
    type = number
    default = "22"
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "sg_name" {
    type = map
    default = {
        Name = "expense-backend-dev"
    }
}
