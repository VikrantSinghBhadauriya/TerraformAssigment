output "subnetIds" {

  value = aws_subnet.aws_public_subnet["192.168.2.0/24"].id

}

output "VPC_ID" {
    value=aws_vpc.main.id  
}