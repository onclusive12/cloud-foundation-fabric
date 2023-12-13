variable "project_id" {
  description = "The ID of the project where this VPC will be created."
  type        = string
  default     = "onclusive-poc"
}

variable "name" {
  description = "The name of the network being created."
  type        = string
  default     = "my-network"
}

variable "region" {
  description = "region for subnets"
  type        = string
  default     = "europe-west1"
}

variable "subnets" {
  type = object({
    ip_cidr_range      = string
    name               = string
    region             = string
    
  })
  description = "List of subnets"
default = [
    
      ip_cidr_range = "10.0.0.0/24"
      name          = "production"
      region        = "europe-west1"
      
  ]
}
