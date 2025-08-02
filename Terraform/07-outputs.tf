output "alb_controller_policy_arn" {
  value = aws_iam_policy.alb_controller_policy.arn
}
output "cluster_autoscaler_policy_arn" {
  value = aws_iam_policy.cluster_autoscaler_policy.arn
}
output "cluster_name" {
  value = module.eks.cluster_name
}
output "vpc_id" {
  value = module.vpc.vpc_id
}
output "secre_access_policy_arn" {
  value = aws_iam_policy.secre_access_policy.arn
  
}