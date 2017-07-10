# docker build -t ubuntu1604py36
FROM nvidia/cuda:8.0-cudnn6-devel-ubuntu16.04
MAINTAINER Naren Dasan

RUN apt-get update
RUN apt-get install -y software-properties-common vim
RUN add-apt-repository ppa:jonathonf/python-3.6
RUN apt-get update

RUN apt-get install -y --no-install-recommends build-essential python3.6 python3.6-dev python3-pip python3.6-venv
RUN apt-get install -y git

# update pip
RUN python3.6 -m pip install pip --upgrade
RUN python3.6 -m pip install wheel
RUN python3.6 -m pip install http://download.pytorch.org/whl/cu80/torch-0.1.12.post2-cp36-cp36m-linux_x86_64.whl 
RUN python3.6 -m pip install torchvision
RUN echo 'alias python="python3.6"' >> ~/.bashrc
RUN echo 'alias pip="python3.6 -m pip"' >> ~/.bashrc

CMD /bin/bash
