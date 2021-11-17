variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  type        = string
  default     = "192.168.0.0/21"
  description = "Please enter the IP range (CIDR notation)"
}

variable "public-subnets" {
  type    = list
  default = ["192.168.1.0/24" , "192.168.2.0/24"]
}

variable "private-subnets" {
  type    = list
  default = ["192.168.3.0/24" , "192.168.4.0/24"]
}

variable "azs" {
  type    = list
  default = ["us-east-1a" , "us-east-1b"]
}
