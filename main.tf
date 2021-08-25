module "networking" {
  source = "./Modules/Networking"
  
}
module "Ec2_instance" {
  source = "./Modules/ec2-Instance"
  subnetId = module.networking.subnetIds
  VPC_ID = module.networking.VPC_ID
}