# resource "aws_iam_role" "ebs_csi_driver_role" {
#   name = "AmazonEKS_EBS_CSI_DriverRolee"
#   assume_role_policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Effect = "Allow",
#         Principal = {
#           Service = "eks.amazonaws.com"
#         },
#         Action = "sts:AssumeRole"
#       }
#     ]
#   })
  
# }
# #AmazonEBSCSIDriverPolicy
# resource "aws_iam_role_policy_attachment" "ebs-role-policy-attachment" {
#   role       = aws_iam_role.ebs_csi_driver_role.name
#   policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy"
  
# }