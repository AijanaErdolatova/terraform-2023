variable "region" {
  type        = string
  default     = "us-east-2"
  description = "Enter the region"
}

variable "key_name"{
  description = "Enter key name"
  type = string
  default = "ohio-key"
}

variable "key_file" {
  description = "Enter public key from file"
  type = string
  default = "~/.ssh/id_rsa.pub"
}