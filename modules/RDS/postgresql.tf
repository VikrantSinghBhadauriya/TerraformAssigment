resource "aws_db_instance" "TF_postgres" {
  allocated_storage    = 10
  engine               = "postgres"
  engine_version       = "13.3"
  db_subnet_group_name=  var.dbsubnetId
  instance_class       = "db.m5.large"
  name                 = "TF_myPostgresdb"
  username             = var.dbusername
  password             = var.dbpassword
  final_snapshot_identifier = "Ignore"
  skip_final_snapshot  = true
  vpc_security_group_ids = [aws_security_group.Postgrsql_securityGroup.id]
   depends_on = [
    aws_security_group.Postgrsql_securityGroup
  ]
  
  tags={
    Name= "MyTFdb"
  }
}
resource "aws_security_group" "Postgrsql_securityGroup" {
  vpc_id = var.VPC_ID

      egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 5432
        to_port = 5432
        protocol = "tcp"
        security_groups = [var.ec2instanceSGId]
    }    
    tags= {
        Name = "RDS Instance SG access"
    }

  
}
