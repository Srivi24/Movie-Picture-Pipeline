variable "k8s_version" {
  description = "Kubernetes version for the EKS cluster."
  type        = string
  default     = "1.35"

  validation {
    condition     = can(regex("^\\d+\\.\\d+$", var.k8s_version))
    error_message = "k8s_version must use the major.minor format, for example 1.35."
  }
}

variable "enable_private" {
  description = "Disable the public EKS API endpoint and run worker nodes in private subnets."
  type        = bool
  default     = false
}

variable "aws_region" {
  description = "AWS region in which to create the infrastructure."
  type        = string
  default     = "us-east-1"
}

variable "public_az" {
  type        = string
  description = "Change this to a letter a-f only if you encounter an error during setup"
  default     = "a"
}

variable "private_az" {
  type        = string
  description = "Change this to a letter a-f only if you encounter an error during setup"
  default     = "b"
}

variable "cluster_name" {
  description = "Name of the EKS cluster."
  type        = string
  default     = "cluster"

  validation {
    condition     = can(regex("^[A-Za-z0-9][A-Za-z0-9_-]{0,99}$", var.cluster_name))
    error_message = "cluster_name must be 1-100 characters and contain only letters, numbers, hyphens, or underscores."
  }
}

variable "github_org" {
  description = "GitHub username or organization that owns movie-pipeline-frontend and movie-pipeline-backend (e.g. srivi24)"
  type        = string
  default     = "srivi24"
}
