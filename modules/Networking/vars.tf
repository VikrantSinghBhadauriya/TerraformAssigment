variable "public_subnet_range" {
  type    = set(string)
  default = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
}

variable "private_subnet_range" {
  type    = set(string)
  default = ["192.168.4.0/24", "192.168.5.0/24", "192.168.6.0/24"]
}


