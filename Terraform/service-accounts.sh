#! /bin/bash

terraform apply -auto-approve
ALB_CONTROLLER_POLICY_ARN=$(terraform output -raw alb_controller_policy_arn)
CLUSTER_AUTOSCALER_POLICY_ARN=$(terraform output -raw cluster_autoscaler_policy_arn)
CLUSTER_NAME=$(terraform output -raw cluster_name)
SECRET_ACCESS_POLICY_ARN=$(terraform output -raw secre_access_policy_arn)
VPC_ID=$(terraform output -raw vpc_id)



eksctl create iamserviceaccount \
        --name ebs-csi-controller-sa \
        --namespace kube-system \
        --cluster "$CLUSTER_NAME" \
        --role-name AmazonEKS_EBS_CSI_DriverRole \
        --role-only \
        --override-existing-serviceaccounts \
        --attach-policy-arn arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy \
        --approve

eksctl create iamserviceaccount \
    --cluster="$CLUSTER_NAME" \
    --namespace=kube-system \
    --name=aws-load-balancer-controller \
    --attach-policy-arn="$ALB_CONTROLLER_POLICY_ARN" \
    --override-existing-serviceaccounts \
    --region eu-west-1 \
    --approve


eksctl create iamserviceaccount \
                --region=eu-west-1 --namespace default --name eks-secrets-sa \
                --cluster "$CLUSTER_NAME" \
                --attach-policy-arn  "$SECRET_ACCESS_POLICY_ARN" --approve \
                --override-existing-serviceaccounts



if helm status aws-load-balancer-controller -n kube-system > /dev/null 2>&1; then
  echo "Helm release already exists. Skipping install."
else
  helm install aws-load-balancer-controller eks/aws-load-balancer-controller \
    -n kube-system \
    --set clusterName="$CLUSTER_NAME" \
    --set serviceAccount.create=false \
    --set serviceAccount.name=aws-load-balancer-controller \
    --set vpcId="$VPC_ID" \
    --version 1.13.0
fi

# if helm status cluster-autoscaler -n kube-system > /dev/null 2>&1; then
#   echo "Helm release already exists. Skipping install."
# else
#   helm install cluster-autoscaler autoscaler/cluster-autoscaler \
#     -n kube-system \
#     --set clusterName="$CLUSTER_NAME" \
#     --set serviceAccount.create=false \
#     --set serviceAccount.name=cluster-autoscaler \
#     --set vpcId="$VPC_ID" \
#     --version 1.13.0
# fi



#helm install pg_db oci://registry-1.docker.io/bitnamicharts/postgresql --set primary.persistence.storageClass=encrypted
#helm repo add aws-secrets-manager https://aws.github.io/secrets-store-csi-driver-provider-aws 
#helm install -n kube-system secrets-provider-aws aws-secrets-manager/secrets-store-csi-driver-provider-aws 
#kubectl create namespace argocd
#kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
#kubectl port-forward svc/argocd-server -n argocd 8080:443
#kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath={.data.password} | base64 -d
BprUGnh3izCQI4a3

argocd
tCPB9mjS8yi2bEXB

postgres
Oms3oGsomH



eksctl create iamserviceaccount \
                --region=eu-west-1 --namespace prod --name eks-secrets-sa \
                --cluster "my-cluster" \
                --attach-policy-arn  "arn:aws:iam::023703779142:policy/grkm" --approve \
                --override-existing-serviceaccounts