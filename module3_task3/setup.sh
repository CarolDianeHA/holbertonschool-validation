#!/bin/bash

sudo apt-get update
sudo apt-get install -y wget make
wget https://github.com/gohugoio/hugo/releases/download/v0.85.0/hugo_0.85.0_Linux-64bit.deb
sudo dpkg -i hugo_0.85.0_Linux-64bit.deb