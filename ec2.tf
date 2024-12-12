resource "aws_instance" "amb-prod2" {
  ami             = "ami-0e2c8caa4b6378d8c"
  instance_type   = "t2.micro"
  key_name        = "terraformkeypair"
  user_data       = file("script.sh")

  # Using the existing security group IDs
  vpc_security_group_ids = [
    "sg-011c1037ec9554def",  # Security Group ID for allow_ssh
    "sg-095ce1c83a5343583",  # Security Group ID for allow_http
    "sg-05e26774e15dbb36a"   # Security Group ID for allow_egress
  ]

  tags = {
    Name = "amb-prod2"
  }
}