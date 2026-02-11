resource "aws_instance" "terraform-practice" {
  ami           = "ami-019715e0d74f695be"   # Ubuntu 24.04 AMI in ap-south-1 (update if needed)
  instance_type = "t3.micro"                # At least 2GB RAM for Minikube
  key_name      = k8s
  security_groups = [aws_security_group.allow_ssh.name]

  tags = {
    Name = "MyTerraformEC2"
  }
}
