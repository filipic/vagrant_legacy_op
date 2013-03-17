#!/usr/bin/env bash

apt-get update
apt-get install -y vim tmux
apt-get install -y apache2 memcached
apt-get install -y php5 php5-gd php5-suhosin php5-tidy php5-xsl php5-memcached
apt-get install -y git-core git-svn

export DEBIAN_FRONTEND=noninteractive
apt-get install -q -y mysql-server-5.5

git config --global user.name "guglielmo"
git config --global user.email guglielmo.celata@gmail.com

# link my ssh keys (git needs them)
ln -s /me/.ssh/id* ~/.ssh/



