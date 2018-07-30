################################################################################
##  Dockerfile to build minimal OpenCV image with Python3.6 and Video support ##
################################################################################
FROM python:3.6-slim

MAINTAINER Janos Czentye <czentye@tmit.bme.hu>

ENV LANG=C.UTF-8

RUN apt update && apt install libglib2.0-0 libsm6 libxrender1 libxext6 && \
	pip3 install --no-cache-dir opencv-python
