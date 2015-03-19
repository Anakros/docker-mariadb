#!/bin/bash

if [ ! -d /var/lib/mysql/mysql ]; then
    chown mysql:mysql /var/lib/mysql
    mysql_install_db
fi

mysqld_safe --bind-address=0.0.0.0 --innodb_use_native_aio=0
