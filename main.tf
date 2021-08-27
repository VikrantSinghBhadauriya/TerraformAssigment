module "networking" {
  source = "./modules/Networking"

}
module "Ec2_instance" {
  source   = "./modules/ec2-Instance"
  subnetId = module.networking.subnetIds
  VPC_ID   = module.networking.VPC_ID
}
module "Postgresql_RDS" {
  source          = "./modules/RDS"
  ec2instanceSGId = module.Ec2_instance.ec2instanceSecuritygroupId
  VPC_ID          = module.networking.VPC_ID
  dbsubnetId      = module.networking.subnetIds
  dbusername      = var.dbusername
  dbpassword      = var.dbpassword

}