#!/bin/bash

sudo apt-get install -y --no-install-recommends \
     apt-transport-https \
     ca-certificates \
     curl \
     software-properties-common \
     python-software-properties


curl -fsSL https://apt.dockerproject.org/gpg | sudo apt-key add -

sudo add-apt-repository \
            "deb https://apt.dockerproject.org/repo/ \
       debian-$(lsb_release -cs) \
       main"

sudo apt-get update

sudo apt-get -y install docker-engine

