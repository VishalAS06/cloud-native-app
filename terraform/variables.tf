output "cluster_id" {
  description = "EKS Cluster ID"
  value       = aws_eks_cluster.my_cluster.id
}

output "cluster_name" {
  description = "EKS Cluster Name"
  value       = aws_eks_cluster.my_cluster.name
}

output "kubeconfig_command" {
  description = "Command to configure kubectl"
  value       = "aws eks --region ${var.aws_region} update-kubeconfig --name ${aws_eks_cluster.my_cluster.name}"
}

output "node_group_name" {
  description = "Name of the EKS Node Group"
  value       = aws_eks_node_group.node_group.id
}
