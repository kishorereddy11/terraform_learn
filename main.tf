module "eks" {
 for_each = var.eks
  source = "./module/eks"
  env = var.env
  eks_version = each.value["eks_version"]
  subnets = each.value["subnets"]
}