#!/bin/bash

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

cp ./nginx/stub.conf /etc/nginx/conf.d

systemctl restart nginx

docker-compose up -d