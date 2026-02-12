resource "aws_instance" "simple_ec2" {
  ami                    = "ami-019715e0d74f695be"   # Ubuntu 24.04 AMI in ap-south-1
  instance_type          = "t3.micro"
  key_name               = "k8s"

  # ✅ Use this for security group IDs
  vpc_security_group_ids = ["sg-06fd543363e8e8d67"]

  tags = {
    Name = "SimpleEC2"
  }
}
