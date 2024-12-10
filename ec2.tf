resource "aws_instance" "amb-prod" {
  ami           = "ami-0e2c8caa4b6378d8c"
  instance_type = "t2.micro"
  key_name = "terraformkeypair"  
  user_data = file("script.sh")
  vpc_security_group_ids = [
  aws_security_group.allow-ssh.id,
  aws_security_group.allow-http.id,
  aws_security_group.allow-egress.id
]

  tags = {
    Name = "amb-prod"
  }
}