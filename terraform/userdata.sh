#!/bin/bash
sudo apt update -y
sudo apt install docker.io -y

sudo docker pull vishal231/nginx:latest

sudo docker run -d  vishal231/nginx:latest