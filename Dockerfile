# Name: korniichuk/jupyterhub
# Short Description: JupyterHub
# Full Description: The korniichuk/scipy-k3d-notebook Docker image with JupyterHub.
# Version: 0.1a1

FROM korniichuk/scipy-k3d-notebook

MAINTAINER Ruslan Korniichuk <ruslan.korniichuk@gmail.com>

USER root

# Retrieve new lists of packages
ENV REFRESHED_AT 2015–12–28
RUN apt-get -qq update # -qq -- no output except for errors

# Install openssh-server
RUN apt-get install -y openssh-server && apt-get clean

# Install nodejs, nodejs-legacy
RUN apt-get install -y nodejs nodejs-legacy && apt-get clean

# Install npm for configurable-http-proxy installation
RUN apt-get install -y npm && apt-get clean

# Install configurable-http-proxy
RUN npm install -g configurable-http-proxy

# Install pip3 for jupyterhub installation
RUN apt-get install -y python3-pip && apt-get clean

# Install jupyterhub
RUN pip3 install jupyterhub

# Expose a port
EXPOSE 7171
