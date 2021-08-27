resource "aws_db_subnet_group" "TF_subnetGroup" {
  name      ="privatesubnetgroup_rds"
  subnet_ids = var.dbsubnetGroupIds

  tags = {
    Name = "My-TF_DB subnet group"
  }
}