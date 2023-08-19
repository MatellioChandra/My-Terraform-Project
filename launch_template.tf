resource "aws_launch_template" "tf_launch_template" {
  name_prefix            = "tf-launch_template"
  image_id               = var.ami                 
  instance_type          = var.instance_type            
  key_name               = var.keyname                 
  vpc_security_group_ids = [aws_security_group.ELB_SG.id]

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "terraform_auto_scaling"
    }
  }
}