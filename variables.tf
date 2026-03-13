variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.micro"
}

variable "ami_filter" {
  description = "Name filter and owner for ami"
  type = object ({
    name  = string
    owner = string

  })
}

variable "Environment" {
  description = "Development Environment"
  type = object ({
    name           = string
    network_prefix = string
  })
  default = {
    name           = "dev"
    network_prefix = "10.0"
  }
}

variable "min_size" {
  description = "Min number of instances in ASG"
  default = 1
}

variable "max_size" {
  description = "Max number of instances in ASG"
  default = 2
}