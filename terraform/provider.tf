
terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.12.1"
    }
  }

}

provider "helm" {
  kubernetes {
    config_path = "/root/.kube/config"
    config_context = "k3d-sonnen-k3d-cluster"
  }
}