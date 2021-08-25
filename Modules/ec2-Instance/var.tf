variable "ami" {
    default = "t2.micro"
  
}
variable "subnetId" {
    type=string
  
}
variable "instancetype" {
    default = "ami-04db49c0fb2215364"
  
}

variable "VPC_ID" {
    type=string
  
}