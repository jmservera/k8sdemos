# README

```bash

docker build -f .Dockerfile_root . -t d-root
docker run -it --rm --name d-root d-root

```

and try to run the `service mysql start` command:

```bash

docker run -it --rm --name d-root d-root sh -c "id && service mysql start"
docker run -it --rm --name d-non-root d-non-root sh -c "id && service mysql start"
docker run -it --rm -u root --name d-non-root d-non-root sh -c "id && service mysql start"

```


https://learn.microsoft.com/en-us/azure/aks/use-pod-security-policies

https://learn.microsoft.com/en-us/azure/aks/use-psa

https://kubernetes.io/docs/concepts/security/pod-security-standards/