resource "aws_key_pair" "TF_keypair" {
    key_name = "TF_AWS_key_vik"
    public_key = file("/home/infracloud/.ssh/awsTFkey.pub")
  
}