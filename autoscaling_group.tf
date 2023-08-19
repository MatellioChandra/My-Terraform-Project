resource "aws_autoscaling_group" "tf" {
  desired_capacity    = 1   
  max_size            = 2   
  min_size            = 1   
  vpc_zone_identifier = [aws_subnet.Pub_SN.id]   

  launch_template {
    id      = aws_launch_template.tf_launch_template.id
    version = "$Latest"
  }
}