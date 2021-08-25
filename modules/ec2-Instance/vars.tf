variable "ami" {
    default = "ami-04db49c0fb2215364"
  
}
variable "subnetId" {
    type=string
  
}
variable "instancetype" {
    default = "t2.micro"
  
}

variable "VPC_ID" {
    type=string
  
}