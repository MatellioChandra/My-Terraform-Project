# Create route table association for public subnet

resource "aws_route_table_association" "public_RT_A1" {
  subnet_id      = aws_subnet.Pub_SN.id
  route_table_id = aws_route_table.Pub_SN_RT.id
}


# Create route table association btvn pvt_sub & NAT_GW

resource "aws_route_table_association" "pri_sub1_to_natgw1" {
  count          = "1"
  route_table_id = aws_route_table.Pvt_SN_RT[count.index].id
  subnet_id      = aws_subnet.Pvt_SN.id
}