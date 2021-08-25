module "networking" {
  source = "./Modules/Networking"
  
}
module "Ec2_instance" {
  source = "./Modules/ec2-Instance"
  subnetId = module.networking.aws_subnet.aws_public_subnet["192.168.2.0/24"].id
  VPC_ID = module.networking.aws_vpc.main.id
}