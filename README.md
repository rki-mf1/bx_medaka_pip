![](https://img.shields.io/badge/GitAction-docker-blue.svg)

# Template to create Docker containers and push them to Dockerhub

This template includes a complete auto-build (thanks for guidance [https://github.com/CaSe-group](@CaSe-group)).

* auto build
* auto version and hash tag on succesful build
* auto push to Dockerhub and create repo if not present (all the above needs to work)

Dont worry if you do something wrong - nothing will happen and be pushed to Dockerhub!

You can hack around the `main` until you have a successful build, then a Docker image will appear [here](https://hub.docker.com/repositories/u/rkimf1)

The status or errors on your build can be inspected under "Actions"

# Setup

## Step 1. Enter Secrets

This need to be configured only once per repository!

* Go to `Settings -> Secrets -> Actions`
* generate two "New repository secret"s:
    * Name: `DOCKER_HUB_USERNAME`, Value: `rkimf1`
    * Name: `DOCKER_HUB_ACCESS_TOKEN`, Value: `e447f405-243e-49f8-b117-287f89e762f3`

## Step 2. Fill in the Toolname and Version

* choose a tool from [here](https://bioconda.github.io/conda-recipe_index.html)
* modify the Dockerfile the following way:
  * change `ENV VERSION 3.7` to your tool version e.g. `ENV VERSION 1.10.7`
  * change `ENV TOOL python` to your tool name e.g. `ENV TOOL samtools`
  
Done. Happy container building!

Of course, you can also switch to another base image and build more complex containers.

**Make sure that `ENV VERSION` is set. It's needed to create the tag for the docker image.**

A payed GitHub account would even allow to remove Step 1. 
