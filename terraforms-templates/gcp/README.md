# terraform-gcp-gke-airflow


The current architecture was implemented following this guide [Provision a GKE Cluster guide](https://learn.hashicorp.com/tutorials/terraform/gke?in=terraform/kubernetes)

### Prerequisites

- GCP account configured. 
- Kubectl cli

#### Dependencies
- gcloud cli
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
gcloud container clusters get-credentials $(terraform output -raw kubernetes_cluster_name) --region $(terraform output -raw location)
```

To destroy the EKS cluster, we run:

```
terraform destroy --var-file=terraform.tfvars
```
### Airflow
To work with Airflow we will use a NFS service, we will created on the cluster.

Create a namespace for the nsf service
```
kubectl create namespace nfs
```
Now is time to create the nfs server 
```
kubectl -n nfs apply -f nfs/nfs-server.yaml 
```
export the nfs server.
```
export NFS_SERVER=$(kubectl -n nfs get service/nfs-server -o jsonpath="{.spec.clusterIP}") 
```

To install airflow go to the directory `kubernetes/`. [Install Airflow](../kubernetes/README.md)

## Acknowledgments

This solution was based on this guide: [Provision a GKE Cluster guide](https://learn.hashicorp.com/tutorials/terraform/gke?in=terraform/kubernetes), containing
Terraform configuration files to provision an GKE cluster on GCP.