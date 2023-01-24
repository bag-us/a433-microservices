#!/bin/bash

# Build image
docker build -t item-app:v1 .

#baris baru
echo -e "\n";

#list image
docker images
echo -e "\n";

#ubah nama image
docker tag item-app:v1 2bagus/submission:v1
echo -e "\n";

#login docker hub
cat /home/bgs/password.txt | docker login --username 2bagus --password-stdin
echo -e "\n";

#push image ke repository
docker push 2bagus/submission:v1