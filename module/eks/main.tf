resource "aws_eks_cluster" "main" {
  name = var.env

  access_config {
    bootstrap_cluster_creator_admin_permissions = true
    authentication_mode = "API"
  }

  role_arn = aws_iam_role.cluster-role.arn
  version = var.eks_version

  vpc_config {
  subnet_ids = var.subnets
}
}