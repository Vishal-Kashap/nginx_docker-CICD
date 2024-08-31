#!/bin/bash
sudo apt update -y
sudo apt install docker.io -y

sudo docker pull vishal231/nginx:latest

sudo docker run -d -p 80:80  vishal231/nginx:latest
