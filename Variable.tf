variable "project_name"{
 type = string
  default = "My-Project"
}

variable "ami"{
 type = string
  default = "ami-02eb7a4783e7e9317"
}
variable "keyname"{
  default = "WebKP"
}
variable "region" {
  type        = string
  default     = "ap-south-1"
  description = "default region"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "default vpc_cidr_block"
}

variable "pub_sub_cidr_block"{
   type        = string
   default     = "10.0.1.0/24"
}

variable "prv_sub_cidr_block"{
   type        = string
   default     = "10.0.2.0/24"
}

variable "sg_name"{
 type = string
 default = "ALB_SG"
}

variable "sg_description"{
 type = string
 default = "SG for application load balancer"
}

variable "sg_tagname"{
 type = string
 default = "SG for ALB"
}

variable "sg_ws_name"{
 type = string
 default = "Web_SG"
}

variable "sg_ws_description"{
 type = string
 default = "SG for web server"
}

variable "sg_ws_tagname"{
 type = string
 default = "SG for Web"
}

variable "image_id"{
 type = string
 default = "SG for Web"
}

variable "instance_type"{
 type = string
 default = "t2.micro"
}

