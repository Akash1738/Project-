resource "aws_instance" "simple-ec2" {
  ami           = "ami-019715e0d74f695be"   # Ubuntu 24.04 AMI in ap-south-1
  instance_type = "t3.micro"                # small instance
  key_name      = "k8s"                     # must exist in AWS

  # You can either reference an existing SG by ID:
  security_groups = ["sg-06fd543363e8e8d67"]

  tags = {
    Name = "Simple-EC2"
  }
}
