module "networking" {
  source = "./modules/Networking"
  
}
module "Ec2_instance" {
  source = "./modules/ec2-Instance"
  subnetId = module.networking.subnetIds
  VPC_ID = module.networking.VPC_ID
}