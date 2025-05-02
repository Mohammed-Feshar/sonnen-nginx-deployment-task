#  🔥 Sonnen nginx deployment task 🔥
This assignment aims to deploy a custom NGINX Web App to a local Kubernetes cluster using Helm by Terraform

### ✨ Prerequisites:
1. Install [Docker](https://docs.docker.com/get-docker/)
2. Install [act](https://github.com/nektos/act#installation) >> to allow to run GitHub Actions locally which is perfect for the assignment requirment
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install act
```
3. Install [k3d](https://k3d.io/#installation)
4. Install [kubectl](https://kubernetes.io/docs/tasks/tools/)

### ✨ Steps:
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

### ✨ Why using K3D on local machines:
I picked k3d because it's a lightweight wrapper around k3s that allows spinning up a local Kubernetes cluster in seconds.and by default it creates a single node cluster where the control plane and worker are combined togther, and it's great for machines with limited resources like laptops, also it's ideal for local development or testing environments


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

#### 📩 Notes:
 **Need help?**  
If you encounter any issues validating my solution or faced access restrictions, please feel free to contact me at **mohammedfeshar@gmail.com**.



