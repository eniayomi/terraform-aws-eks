variable "name" {
  type = string
}

variable "eks_service_role" {
  type        = string
  default     = "eksServiceRole"
  description = "The service role to used by EKS"
}

variable "node_iam_role" {
  type        = string
  default     = "EKSNode"
  description = "The IAM role used by nodes"
}

variable "k8s_version" {
  default = "1.14"
}

variable "vpc_id" {
  type = string
}

variable "public_subnet_ids" {
  type        = list(string)
  default     = []
  description = "Public subnets, to be used for external load balancers."
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "Private subnets, to be used by pods and internal load balancers."
}

variable "endpoint_public_access" {
  type        = bool
  description = "Indicates whether or not the Amazon EKS public API server endpoint is enabled."
  default     = false
}

variable "cluster_log_types" {
  type        = list(string)
  description = "A list of the desired control plane logging to enable."
  default     = ["api", "audit", "authenticator", "controllerManager", "scheduler"]
}