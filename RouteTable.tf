# Create Public Route Table

resource "aws_route_table" "Pub_SN_RT" {
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
    Name = "Pub_RT"
  }
}


# Create private route table for prv sub1

resource "aws_route_table" "Pvt_SN_RT" {
  count  = "1"
  vpc_id = aws_vpc.My_VPC.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.natgateway[count.index].id
  }
  tags = {
    Name = "Pvt_RT"
  }
}