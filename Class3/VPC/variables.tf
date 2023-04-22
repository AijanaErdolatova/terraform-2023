variable "region" {
  type        = string
  description = "enter region"
  default     = "us-east-1"
}

variable "vpc_name" {
  type        = string
  default     = "my-vpc"
  description = "enter vpc name"
}

variable "cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
  description = "enter cidr block"
}