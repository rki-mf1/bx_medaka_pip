FROM continuumio/miniconda3:4.10.3
ENV VERSION 2.0.1
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update --allow-releaseinfo-change && apt install -y procps wget gzip pigz bc && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN pip install medaka
