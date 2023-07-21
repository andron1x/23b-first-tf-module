variable "ami" {
  description = "Amazon machine Image"
  type        = string
  default     = "ami-053b0d53c279acc90"
}

variable "instance_type" {
  description = "the type of instance"
  type        = string
  default     = "t2.micro"
}

variable "instance_count" {
  description = "The number of EC2"
  type        = number
  default     = 1
}

variable "sg_name" {
  description = "aws sg name "
  type = string
  default = "my-module-sg-name"
  
}

variable "sg_description" {
  
}
variable "vpc_id" {
  
}
