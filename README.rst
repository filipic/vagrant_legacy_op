Overview
========

This repository may be used to configure and run the development environment needed to work
on these legacy OP applications:

* politici.openpolis.it
* parlamento.openpolis.it
* accesso.openpolis.it


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

.. code::

    git clone https://github.com/guglielmo/vagrant_legacy_op.git op_legacy_dev
    vagrant up

Parlamento
==========

Politici
========

Accesso
=======
