#!/bin/bash

#Build Docker Image dari Dockerfile
docker build -t karsajobs-ui:latest .

#ubah nama image
docker tag karsajobs:latest 2bagus/karsajobs-ui:latest

#login docker hub
cat /home/bgs/password.txt | docker login --username 2bagus --password-stdin

#Push docker image ke Github Container Repository
docker push 2bagus/karsajobs-ui:latest