#/bin/sh

docker build -f Dockerfile.non_root . -t d-non-root

if [ "$1" = "-n" ]; then
    echo "***** Building non-root image only"
else
    docker build -f Dockerfile.root . -t d-root
fi

echo ***** Running as ROOT
docker run -it --rm --name d-root d-root

echo ***** Running as NON-ROOT
docker run -it --rm --name d-non-root d-non-root