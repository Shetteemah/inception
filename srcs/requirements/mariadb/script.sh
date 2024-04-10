#!/bin/bash
sed -i "s/database/$DB_NAME/" init.sql
sed -i "s/user/$DB_USER/" init.sql
sed -i "s/password/$DB_PASS/" init.sql
mysql_install_db
mysqld
