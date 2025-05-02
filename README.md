#  🔥 Sonnen nginx deployment task 🔥
Task project to deploy a custom NGINX Web App to Kubernetes using Helm

### ✨ Prerequisites:
install docker
install act
install k3d
install kubectl

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


❌ Important:
#### If you faced this Error while running act "Error: cannot re-use a name that is still in use"
#### You need to unistall the helm release then run again
Example: 
$ helm list -n dev
$ helm uninstall nginx-local -n dev



