# kuz-docker-pytorch
Pytorch Dockerfile for Kuz

## How to use this docker box
 
Build this image 
```
docker build -t pytorch .
```

Run with Docker 
```
nvidia-docker run --rm -ti --ipc=host -v [PATH TO DATA]/data:/data -v [PATH TO CODE]/src --name test pytorch
```
