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