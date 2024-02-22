variable "vpc_cider" {
  description = "VPC CIDR Range"
  type = string
}

variable "subnet_cidr" {
  description = "Subnet CIDR's"
  type = list(string)
}

variable "subnet_names" {
  description = "Subnet names"
  type = list(string)
  default = [ "public-subnet-1", "public-subnet-2" ]
}