#!/bin/bash
#this script is ised to build users. 


pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)

/usr/sbin/useradd -d /home/qualys -s /bin/bash -u 1200 -e 2017-23-07 -f 30 -G wheel -c "qualys account" -U -m -p $pass qualys 
