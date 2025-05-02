#  🔥 Sonnen nginx deployment task 🔥
Task project to deploy a custom NGINX Web App to Kubernetes using Helm

### ✨ Prerequisite:
install docker
install act
install k3d
install kubectl

### ✨ Steps:
1️⃣ clone the repo
```bash
$ git clone https://github.com/Mohammed-Feshar/sonnen-nginx-deployment-task
2️⃣ goto script directory
$ cd script/
3️⃣ make file executable
$ chmod +x run.sh
4️⃣ run the script
$ ./run.sh


❌ Important:
#### If you faced this Error while running act "Error: cannot re-use a name that is still in use"
#### You need to unistall the helm release then run again
Example: 
$ helm list -n dev
$ helm uninstall nginx-local -n dev



