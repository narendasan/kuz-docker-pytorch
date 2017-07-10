# kuz-docker-pytorch-cpu
CPU Pytorch Dockerfile for Kuz

## How to use this docker box
 
Build this image 
```
docker build -t pytorch-cpu .
```

Run with Docker 
```
docker run --rm -ti --ipc=host --name test pytorch-cpu
```
