# Load Balancer Target Group
resource "aws_lb_target_group" "my_target_group" {
  name     = "${var.project_name}-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.My_VPC.id

  health_check {
    path     = "/"
    protocol = "HTTP"
    port     = "traffic-port"
  }
  lifecycle {
    create_before_destroy = true
  }
}

# Load Balancer
resource "aws_lb" "my_load_balancer" {
  name               = "${var.project_name}-load-balancer"
  load_balancer_type = "application"
  subnets            = [aws_subnet.Pub_SN.id]
  security_groups    = [aws_security_group.ELB_SG.id]

  tags = {
    Name = "${var.project_name}-load-balancer"
  }
}