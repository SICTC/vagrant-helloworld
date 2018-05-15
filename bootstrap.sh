#!/usr/bin/env bash

apt-get update
apt-get install -y apache2 git emacs python gcc gfortran sbcl build-essential libopenmpi-dev openmpi-bin
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi
