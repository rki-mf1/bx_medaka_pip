FROM continuumio/miniconda3:4.10.3

ENV VERSION 2.0.1
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update --allow-releaseinfo-change && \
    apt install -y procps wget gzip pigz bc && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN conda install -c conda-forge -c bioconda python=3.12 samtools minimap2 htslib pyabpoa bcftools -y

RUN pip install --no-cache-dir medaka
