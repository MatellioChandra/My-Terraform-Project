resource "aws_key_pair" "WebKP" {
  key_name   = "WebKP"
  public_key = file("${path.module}/id_rsa.pub")
}