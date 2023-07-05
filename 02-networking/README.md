# Networking

Use a bash script to demo the load balancer:

```bash
clear; while true; do tput cup 0 0; curl http://40.127.231.90/; done
```

## Private ingress

You can create a secondary ingress controller for private traffic:

```bash
helm install nginx-ingress-private ingress-nginx/ingress-nginx \
    --create-namespace --namespace ingress-private \
    --set controller.ingressClass="nginx-private" \
    --set controller.ingressClassResource.name="nginx-private" \
    --set controller.service.annotations."service\.beta\.kubernetes\.io/azure-load-balancer-health-probe-request-path"=/healthz \
    --set controller.service.annotations."service\.beta\.kubernetes\.io/azure-load-balancer-internal"="true"
```

Now check that you have two ingress classes:

```bash
k get ingressclass -A
```

