variable "vpc_cider" {
  description = "VPC CIDR Range"
  type        = string
}

variable "subnet_cidr" {
  description = "Subnet CIDR's"
  type        = list(string)
}