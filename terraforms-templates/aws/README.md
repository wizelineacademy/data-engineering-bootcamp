# terraform-aws-eks-airflow


The current architecture was implemented following this guide [Provisioning an EKS Cluster guide](https://learn.hashicorp.com/terraform/kubernetes/provision-eks-cluster)

### Prerequisites

- AWS account configured. For this example we are using default profile and us-east-2 region

#### Dependencies
- aws cli
- Cluster version: 1.20 
- Terraform >= 0.13

### Installing

To have K8s cluster running:

Execute Terraform commands:

```
terraform init
```
```
terraform apply --var-file=terraform.tfvars
```
Once that the cluster is created, set the kubectl context:

```
aws eks --region $(terraform output -raw region) update-kubeconfig --name $(terraform output -raw cluster_name)
```

To destroy the EKS cluster, we run:

```
terraform destroy --var-file=terraform.tfvars
```
### Airflow
export the nfs server.
```
export NFS_SERVER=$(terraform output -raw efs)
```

To install airflow go to the directory `kubernetes/`. [Install Airflow](../kubernetes/README.md)

## Acknowledgments

This solution was based on this guide: [Provision an EKS Cluster learn guide](https://learn.hashicorp.com/terraform/kubernetes/provision-eks-cluster), containing
Terraform configuration files to provision an EKS cluster on AWS.