output "frontend_ecr" {
  description = "Container registry URL for the frontend image."
  value       = aws_ecr_repository.frontend.repository_url
}
output "backend_ecr" {
  description = "Container registry URL for the backend image."
  value       = aws_ecr_repository.backend.repository_url
}

output "cluster_name" {
  description = "Name of the EKS cluster."
  value       = aws_eks_cluster.main.name
}

output "cluster_version" {
  description = "Kubernetes version running on the EKS control plane."
  value       = aws_eks_cluster.main.version
}

output "aws_region" {
  description = "AWS region containing the infrastructure."
  value       = var.aws_region
}

output "github_action_user_arn" {
  description = "IAM user ARN to authorize in the EKS cluster for GitHub Actions."
  value       = aws_iam_user.github_action_user.arn
}
