# README

```bash

docker build -f .Dockerfile_root . -t d-root
docker run -it --rm --name d-root d-root

```

and try to run the `service mysql start` command:

```bash

docker run -it --rm --name d-root d-root service mysql start
docker run -it --rm --name d-non-root d-non-root service mysql start
docker run -it --rm -u root --name d-non-root d-non-root service mysql start

```
