
# Table of Contents

1.  [Contains of this repo](#org16f160b)
2.  [Terraform K8s Cluster](#orgecbeaf0)
    1.  [Terraform AWS-EKS](#org8b2e425)
        1.  [Prerequisites](#org3ec8211)
        2.  [Dependencies](#org7c4f9ac)
        3.  [Installing](#org3bdf0ac)
    2.  [Terraform GCP-GKE](#orgc72177c)
    3.  [Terraform destruction](#org95a9c1d)
3.  [Airflow](#org9324c62)

This repository contains some of the principal resourses that you probably want to use when starts working into the IaC module.


<a id="org16f160b"></a>

# Contains of this repo

    .
    └── terraforms-templates
        ├── aws
        │   ├── assests
        │   └── modules
        │       ├── ec2
        │       ├── eks
        │       ├── networking
        │       ├── rds
        │       └── s3
        ├── gcp
        │   ├── modules
        │   │   ├── cloudsql
        │   │   ├── compute-engine
        │   │   ├── gke
        │   │   └── vpc
        │   └── nfs
        └── kubernetes


<a id="orgecbeaf0"></a>

# Terraform K8s Cluster


<a id="org8b2e425"></a>

## Terraform AWS-EKS

The current architecture was implemented following this guide [Provisioning an EKS Cluster guide](file://learn.hashicorp.com/terraform/kubernetes/provision-eks-cluster) )


<a id="org3ec8211"></a>

### Prerequisites

-   AWS account configured. For this example we are using default profile and *us-east-2* region.


<a id="org7c4f9ac"></a>

### Dependencies

-   aws cli
-   Cluster version: 1.20
-   Terraform >= 0.13


<a id="org3bdf0ac"></a>

### Installing

Go to the directory `./aws/` and execute the Terraform commands:

    terraform init
    terraform apply --var-file=terraform.tfvars

Once that the cluster is created (it will took a few minutes), set the kubectl context:

    aws eks --region $(terraform output -raw region) update-kubeconfig --name $(terraform output -raw cluster_name)


<a id="orgc72177c"></a>

## Terraform GCP-GKE


<a id="org95a9c1d"></a>

## Terraform destruction

To destroy the EKS cluster with all the services, we run:

    terraform destroy --var-file=terraform.tfvars

**Important notes**
Remember that you are working with services on the cloud and you are creating the infraestructure to work with between them. Often times, due different conditions, including internet desconections and server problems, some of your services will stay in your Cloud Provider, so, we encourage you to check twice everytime you run this feature and make sure that all the services were shut down properly.


<a id="org9324c62"></a>

# Airflow

