resource "aws_route_table" "Public_RT" {
  vpc_id = aws_vpc.My_VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.My_IGW.id
  }

  route {
    ipv6_cidr_block = "::/0"
    gateway_id      = aws_internet_gateway.My_IGW.id
  }

  tags = {
    Name = "Public_RT"
  }
}