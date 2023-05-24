resource "aws_internet_gateway" "My_IGW" {
  vpc_id     = aws_vpc.My_VPC.id

  tags = {
    Name = "My_IGW"
  }
}