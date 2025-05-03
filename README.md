#  🔥 Sonnen nginx deployment task 🔥
This repo aims to deploy a custom NGINX Web App to a local Kubernetes cluster using Helm by Terraform in a fully automated approach as requested in the assignment requirments

### ✨ Prerequisites:
1. Install [Docker](https://docs.docker.com/get-docker/)
2. Install [act](https://github.com/nektos/act#installation) >> will allow us to run GitHub Actions locally which is perfect for the assignment requirment
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install act
```
3. Install [k3d](https://k3d.io/#installation)
4. Install [kubectl](https://kubernetes.io/docs/tasks/tools/)
5. Install [Terraform](https://developer.hashicorp.com/terraform/downloads) >> required for deploying the Helm chart as requested

### ✨ Steps to test the application:**
1️⃣ clone the repo
```bash
git clone https://github.com/Mohammed-Feshar/sonnen-nginx-deployment-task
```
2️⃣ goto script directory
```bash
cd script/
```
3️⃣ make file executable
```bash
chmod +x run.sh
```
4️⃣ set docker access token that was shared via email
```bash
export DOCKER_PASSWORD="docker_password"
```
5️⃣ run the script
```bash
./run.sh
```
6️⃣ after running the script you will see an output similar to this on your local terminal
```bash
Dev Deployment/DEPLOY IMAGE]   ✅  Success - Complete job
[Dev Deployment/DEPLOY IMAGE] 🏁  Job succeeded
Forwarding from 127.0.0.1:8070 -> 80
Forwarding from [::1]:8070 -> 80
Handling connection for 8070
```
7️⃣ go to your favorite browser and check localhost on port 8070 and that's it
```bash
http://localhost:8070/
```
### ✨ How to deploy the Helm chart:
I have created a custom Helm chart that pulls the Docker image from Docker Hub and deploys it using the Helm provider in Terraform on local k3d cluster with one replica and this deployment is automated in the github workflow file in the deploy stage


### ✨ Why using K3D on local machines:
I picked k3d because it's a lightweight wrapper around k3s that allows spinning up a local Kubernetes cluster in seconds.and by default it creates a single node cluster where the control plane and worker are combined togther, and it's great for machines with limited resources like laptops, also it's ideal for local development or testing environments


### ✨ Improvments:
#### Environment Configuration:
To better manage multiple environments (dev, sit, uat, prod), we can create a config/ directory inside the terraform/ folder. Each environment will have its own terraform.tfvars file:
```bash
terraform/config/dev/terraform.tfvars
terraform/config/sit/terraform.tfvars
...
```
During deployment, the appropriate file can be used dynamically in GitHub Actions based on the target environment
for example
```bash
terraform apply -auto-approve -var-file=../config/${environment}/terraform.tfvars
```
#### Git Branching Strategy
Adopting the GitFlow branching model enhances CI/CD and environment isolation:

    dev branch → for deploying to development and SIT environments

    main branch → for deploying to the production environment

#### Security Improvements
We can enhance security by integrating SAST and DAST tools into the CI/CD pipeline like (SonarQube,Checkov, Trivy, Clair,Burp Suite, etc..)

❌ Important:
#### If you faced this Error while running act "Error: cannot re-use a name that is still in use"
#### You need to unistall the helm release then run again
Example: 
```bash
helm list -n dev
```
```bash
helm uninstall nginx-local -n dev
```
#### If you faced this error while working with k8s "Error: Kubernetes cluster unreachable: Get "http://localhost:8080/version": dial tcp 127.0.0.1:8080: connect: connection refused"
#### you would need to run these commands
```bash
k3d kubeconfig write sonnen-k3d-cluster
export KUBECONFIG=$(k3d kubeconfig write sonnen-k3d-cluster)
kubectl config get-contexts
kubectl config use-context k3d-sonnen-k3d-cluster
```

#### ⭕ Notes:
### 💢 I have added custom CSS and JavaScript files alongside the index.html page to make the web application more user-friendly
### 💢 I haved added a screenshot named sonnen-final-result.png in the root directory which display the final output
📩 **Facing Issues?**  
If you encounter any issues validating my solution or faced access restrictions, please feel free to contact me at **mohammedfeshar@gmail.com**.

