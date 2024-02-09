#! /bin/bash

# build docker image and push to docker hub

# build docker image 
docker build -t dianp/hello-python:1.0.0 -t dianp/hello-python:latest .

# menampilkan list docker image yang bernama hello-python yang ada di local
echo docker images | grep hello-python



# login ke dockerhub
# pastikan telah menjalankan perintah berikut sebelum menjalankan script
# export PASSWORD_DOCKER_HUB=<password_dockerhub>
echo $PASSWORD_DOCKER_HUB | docker login -u dianp --password-stdin 

# mengunggah image ke github package
docker push dianp/hello-python:1.0.0 
docker push dianp/hello-python:latest
