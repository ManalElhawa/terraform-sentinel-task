variable "instance_name" {
  description = "Value of the EC2 instance's Name tag."
  type        = string
  default     = "terraform-lab"
}

variable "vpc_name" {
  description = "Value of the VPC's Name tag."
  type        = string
  default     = "vpc-lab"
}

variable "instance_type" {
  description = "The EC2 instance's type."
  type        = string
  default     = "t3.micro"
}