variable "dbusername" {
type=string
}
variable "dbpassword" {
  type=string
}
variable "ec2instanceSGId" {
    type=string
  
}
variable "dbsubnetGroupIds" {
  type=list(string)
  
}

variable "VPC_ID" {
    type=string
  
}