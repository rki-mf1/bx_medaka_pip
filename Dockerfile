FROM continuumio/miniconda3:4.10.3

ENV VERSION 2.0.1
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update --allow-releaseinfo-change && \
    apt install -y procps wget gzip pigz bc && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN conda create -n medaka -c conda-forge -c bioconda python=3.12 samtools minimap2 htslib pyabpoa bcftools -y

ENTRYPOINT ["conda", "run", "-n", "medaka", "/bin/bash", "-c"]

RUN pip install medaka
