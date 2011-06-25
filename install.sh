#!/bin/bash

#
# Ubuntu-specific install template
#
# Tested on EC2 AMI ami-fd5100b8
# 

sudo aptitude update
sudo aptitude install -y python-qt4 python-wsgiref python-setuptools libqt4-webkit xvfb
sudo easy_install webob tornado

sudo iptables -A PREROUTING -t nat -p tcp --dport 80 -j REDIRECT --to-port 8888
sudo iptables-save
sudo Xvfb :99 -screen 0 1024x768x16 &

sleep 5
cp webkit2png.cfg.example webkit2png.cfg
nohup python webkit2png.py &
