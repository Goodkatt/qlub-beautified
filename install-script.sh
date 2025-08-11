#! /bin/bash


# kubectl delete secret sh.helm.release.v1.aws-load-balancer-controller.v1
# kubectl delete secret sh.helm.release.v1.autoscaler.v1 -n kube-system
# kubectl delete secret sh.helm.release.v1.metrics-server.v1 -n kube-system


# cd Terraform
# terraform init
# terraform apply -auto-approve

export TF_VAR_secret_key="^n#n1@#w9flk@3u@#=2t4_=9d=4b#)p9mqh4"
export TF_VAR_debug="true"
export TF_VAR_database_name="postgres"
export TF_VAR_database_user="postgres"
export TF_VAR_database_password="Oms3oGsomH"
export TF_VAR_database_host="10.100.199.215"
export TF_VAR_database_port="5432"

#BprUGnh3izCQI4a3