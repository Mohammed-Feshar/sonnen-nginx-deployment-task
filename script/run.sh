#!/bin/bash

# Docker credentials for act
cd ../
act -s DOCKER_USERNAME=feshar92 -s DOCKER_PASSWORD=$DOCKER_PASSWORD

# List k3d clusters
k3d cluster list

# COnfigure kubeconfig for the cluster
k3d kubeconfig write sonnen-k3d-cluster
export KUBECONFIG=$(k3d kubeconfig write sonnen-k3d-cluster)
kubectl config get-contexts
kubectl config use-context k3d-sonnen-k3d-cluster

# For Validation
kubectl get nodes

# Get pods in dev namespace
kubectl get po -n dev

# Port-forward the nginx deployment on port 8070 on the local machine
kubectl port-forward -n dev deployment/nginx-local-sonnen-nginx 8070:80

