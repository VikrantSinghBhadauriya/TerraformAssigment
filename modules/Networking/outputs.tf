output "subnetIds" {

  value = aws_subnet.aws_public_subnet["192.168.3.0/24"].id

}

output "VPC_ID" {
    value=aws_vpc.main.id  
}

output "allPrivateSubnets" {
  value = values(aws_subnet.aws_private_subnet)[*].id
}