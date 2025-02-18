variable "aws_region" {
  description = "AWS region to deploy the resources"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "cloud-native-cluster"
}

variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
  default     = "cloud-native-node-group"
}

variable "instance_type" {
  description = "Instance type for EKS worker nodes"
  type        = string
  default     = "t3.medium"
}

variable "desired_capacity" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "max_capacity" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 3
}

variable "min_capacity" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}
