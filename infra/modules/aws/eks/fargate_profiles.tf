# resource "aws_eks_fargate_profile" "kube_system" {
#   cluster_name           = aws_eks_cluster.cluster.name
#   fargate_profile_name   = "kube-system"
#   pod_execution_role_arn = var.iam_role_arn_eks_fargate_profile
#
#   subnet_ids = var.subnet_ids_private
#
#   selector {
#     namespace = "kube-system" # this might need to be moved to chat-stat repo
#   }
# }

resource "aws_eks_fargate_profile" "fomiller" {
  cluster_name           = aws_eks_cluster.cluster.name
  fargate_profile_name   = var.namespace
  pod_execution_role_arn = var.iam_role_arn_eks_fargate_profile

  subnet_ids = var.subnet_ids_private

  selector {
    namespace = var.namespace
  }
}

# resource "aws_eks_fargate_profile" "argocd" {
#   cluster_name           = aws_eks_cluster.cluster.name
#   fargate_profile_name   = "argocd"
#   pod_execution_role_arn = var.iam_role_arn_eks_fargate_profile
#
#   subnet_ids = var.subnet_ids_private
#
#   selector {
#     namespace = "argocd"
#   }
# }
