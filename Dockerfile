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
