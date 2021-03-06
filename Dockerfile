#
# Super simple example of a Dockerfile
#
FROM ubuntu:latest
MAINTAINER Ramesh Mantha "Ramesh.mantha@hotmail.com"

RUN apt-get update
RUN apt-get install -y python python-pip wget
RUN pip install Flask

RUN touch hello.py 
RUN cp hello.py /home/hello.py

WORKDIR /home
