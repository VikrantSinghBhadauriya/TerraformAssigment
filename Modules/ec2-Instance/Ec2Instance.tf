resource "aws_instance" "ec2_instance1" {
  ami           = var.ami
  instance_type = var.instancetype
  subnet_id = var.subnetId
  security_groups = aws_security_group.ec2instance_securityGroup.id
  tags = {
    Name = "TF_ec2_instance"
  }
}

resource "aws_security_group" "ec2instance_securityGroup" {
  vpc_id = var.VPC_ID

      egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }    
    tags {
        Name = "ssh-allowed"
    }

  
}
