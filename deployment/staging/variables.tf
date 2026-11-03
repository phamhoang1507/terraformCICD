variable "stage" {
  description = "The stage of the deployment (e.g., dev, staging, prod)"
  type        = string
  default     = "staging"
}


variable "availability_zones_a" {
  type        = string
  default     = "ap-southeast-1a"
}

variable "availability_zones_b" {
  type        = string
  default     = "ap-southeast-1b"
}