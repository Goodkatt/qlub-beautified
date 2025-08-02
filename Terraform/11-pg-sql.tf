# resource "helm_release" "pg_sql" {
#   name       = "pg-sql"
#   repository = "https://charts.bitnami.com/bitnami"
#   chart      = "postgresql"
#   version    = "16.7.21"
#   namespace  = "default"

#   depends_on = [module.eks]
  
# }