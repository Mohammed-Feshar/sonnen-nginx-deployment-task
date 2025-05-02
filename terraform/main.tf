
resource "helm_release" "nginx" {
  name       = "nginx-local"
  chart      = "../deployment/nginx"
  namespace  = "dev"
  create_namespace = true
  values = [file("../deployment/nginx/dev/values.yaml")]
}
