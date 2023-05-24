resource "aws_subnet" "Pub_SN" {
  vpc_id     = aws_vpc.My_VPC.id
  cidr_block = var.pub_sub_cidr_block
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = false
  
  

  tags = {
    Name = "Pub_SN"
  }
}

resource "aws_subnet" "Pvt_SN" {
  vpc_id     = aws_vpc.My_VPC.id
  cidr_block = var.prv_sub_cidr_block
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "Pvt_SN"
  }
}
