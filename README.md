#  🔥 Sonnen nginx deployment task 🔥
Task project to deploy a custom NGINX Web App to Kubernetes using Helm

✨ Prerequisite:
install docker
install act
install k3d
install kubectl



❌ Important:
#### If you faced this Error while running act "Error: cannot re-use a name that is still in use"
#### You need to unistall the helm release then run again
Example: 
$ helm list -n dev
$ helm uninstall nginx-local -n dev



