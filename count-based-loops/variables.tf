variable "ec2_names" {
  default = ["mysql", "backend", "frontend"]
}

variable "zoneid" {
  default = "Z09769147H1JY4GOARUG"
}

variable "zonename" {
  default = "naveenrajoli.site"
}

variable "commontags" {
  default = {
    project     = "expence"
    environment = "dev"
  }
}