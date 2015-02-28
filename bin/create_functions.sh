#!/bin/bash

# How to run this script
#
# ./create_functions.sh > install.log 2>&1
#
# grep -i error install.log
#

# Variables

server=localhost
database=app
port=5432
username=app


# Create functions

/usr/bin/psql -h $server -U $username -d $database -p $port -w < ./postgres/functions/accounts_create.sql
/usr/bin/psql -h $server -U $username -d $database -p $port -w < ./postgres/functions/accounts_read_one.sql
/usr/bin/psql -h $server -U $username -d $database -p $port -w < ./postgres/functions/accounts_update.sql
/usr/bin/psql -h $server -U $username -d $database -p $port -w < ./postgres/functions/accounts_delete.sql

