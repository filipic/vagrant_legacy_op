Overview
========

This repository may be used to configure and run the development environment needed to work
on these legacy OP applications:

* openpolitici - politici.openpolis.it
* openparlamento - parlamento.openpolis.it
* op_accesso - accesso.openpolis.it


The solution is based on vagrant_ 1.1.0.  An `ubuntu precise`_ (12.04) linux distribution is downloaded
and provisioned, with all the required software packages and configurations.

From there, it is easy enough to follow the detailed instructions below and install the desired web application.
Vagrant's `folders sharing`_ and `port forwarding`_ features, allow the developers to use native software
to edit and test the application (IDE, Text editor, and browsers).


.. _vagrant: http://www.vagrantup.com/
.. _ubuntu precise: http://releases.ubuntu.com/precise/
.. _folders sharing: http://docs.vagrantup.com/v2/synced-folders/index.html
.. _port forwarding: http://docs.vagrantup.com/v2/networking/forwarded_ports.html


Installation
============
The environment requires a structure similar to the following::

    ~/Workspace
      |- openparlamento
      |- openpolitici
      |- op_accesso
      |- op_legacy_dev

In the above situation, issue the clone command while inside ``~/Workspace``.

.. code::

    cd ~/Workspace
    git clone https://github.com/guglielmo/vagrant_legacy_op.git op_legacy_dev
    vagrant up

Openparlamento
==============
Openparlamento can be cloned following the same caution, using::

    cd ~/Workspace
    git clone git@github.com:openpolis/openparlamento.git

Other steps:
* config/settings.yml must be copied (there should be no modifications, but keep it secret)
* local.parlamento17.openpolis.it must point to 127.0.0.1 in /etc/hosts
* create cache and log directory under /me/Workspace/openparlamento, check permission
* create a symbolik link to /me/Workspace/openparlamento (shortcat)
* mysql -uroot -e "create database opp17 default charset utf8"
* ./symfony propel-build-sql; ./symfony propel-insert-sql;


Politici
========
TODO

Accesso
=======
TODO


Architecture
============
TODO
