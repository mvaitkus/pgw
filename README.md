Python Gateway Wrapper
======================

This project automates ssh connection to configured hosts through gateway. Instead of copy-pasting or entering hosts and passwords by hand it allows you to configure it once in a file and just use `pgw configured_host_alias` to automate connection.

It is written for automating following process:

1.  ssh gateway_host
2.  enter password for gateway
3.  Given output `Please enter <username>@<hostname or IP address> to connect to:` enter the host in required format
4.  Enter password for host
5.  (Optionaly) sudo su - to a different user

Wrapper supports autocompletion for alias names and has been tested on ubuntu 14.04.

Instalation instructions
------------------------

1.  Login to gateway at least once to accept it's ssh key
2.  Checkout this repository
3.  Run `./setup_pgw.sh`
4.  edit ~/.pgw_config to setup aliases
5.  Open new shell window for autocomplete support
6.  Restart your machine if you haven't stored any scripts in ~/bin, as ubuntu only adds this directory to path if it exists on startup

Script creates a symlink to working dir copy of `pgw` script in your ~/bin folder so updates from git repository automatically updates your script. If you do not wish receive updates this way copy the pgw file to a folder which is in you PATH instead and delete the created symlink.

Dependencies
------------

Wrapper depends on ubuntu packages:
* python3-pip

and python packages:
* pexpect 
* argcomplete

Setup script will install those packages and thus you will be required to enter your sudo password.

Known issues
------------
Due to problems with sending resize event to host (haven't figured out whether it is pexpect issue or because you ssh to a target machine using gateway) it is recommended not to resize console window while in session.


Disclaimer
----------

Storing passwords in plain text is unsafe. Please do not use this software anywhere where security matters.

TODO
----

Find a safer way to store passwords.