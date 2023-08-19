resource "aws_instance" "web_instance" {
  ami           = var.ami
  instance_type = "t2.micro"
  key_name      = var.keyname

  subnet_id                   = aws_subnet.Pub_SN.id
  vpc_security_group_ids      = [aws_security_group.Web_SG.id]
  associate_public_ip_address = true

  user_data = <<-EOF
  #!/bin/bash

  sudo apt update
  sudo apt install apache2 -y
  systemctl enable apache2
  systemctl start apache2
  EOF

  tags = {
    "Name" : "MyWeb"
  }
}