resource "aws_route_table_association" "public_RT_A1" {
  subnet_id      = aws_subnet.Pub_SN.id
  route_table_id = aws_route_table.Public_RT.id
}