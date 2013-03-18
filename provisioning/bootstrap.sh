#!/usr/bin/env bash

if [ ! -f /home/vagrant/.provisioned ];
then
    apt-get update
    apt-get install -y vim tmux
    apt-get install -y apache2 memcached
    apt-get install -y php5 php5-gd php5-suhosin php5-tidy php5-xsl php5-memcached php5-curl
    apt-get install -y git-core git-svn

    # non interactive mysql-server installation
    # no root password on local machine
    export DEBIAN_FRONTEND=noninteractive
    apt-get install -q -y mysql-server-5.5

    # git user configuration (change this)
    git config --global user.name "guglielmo"
    git config --global user.email guglielmo.celata@gmail.com

    # link my ssh keys (git needs them)
    ln -s /me/.ssh/id* /home/vagrant/.ssh/

    pushd /etc/php5/cli
    mv php.ini php.ini.000
    cat php.ini.000 |  sed 's/memory_limit = -1/memory_limit = 64M/' | sed 's/short_open_tag = On/short_open_tag = Off/' > php.ini
    popd

    pushd /etc/php5/apache2
    mv php.ini php.ini.000
    cat php.ini.000 |  sed 's/short_open_tag = On/short_open_tag = Off/' > php.ini
    popd


    mysql -uroot -e "create database opp17 default charset utf8"
    ./symfony propel-build-sql
    ./symfony propel-insert-sql

    cp /vagrant/provisioning/opp17.vhost.conf /etc/apache2/sites-available/opp17
    a2ensite opp17

    a2enmod rewrite

    service apache2 restart

    touch /home/vagrant/.provisioned
fi


