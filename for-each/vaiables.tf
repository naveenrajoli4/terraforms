variable "instances" {
  type = map(any)
  default = {
    mysql    = "t3.small"
    backend  = "t3.micro"
    frontend = "t3.micro"
  }
}


variable "zoneid" {
  default = "Z09769147H1JY4GOARUG"
}

variable "zonename" {
  default = "naveenrajoli.site"
}
