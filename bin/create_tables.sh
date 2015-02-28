#!/bin/bash

# How to run this script
#
# ./create_tables.sh > install.log 2>&1
#
# grep -i error install.log
#

# Variables

server=localhost
database=app
port=5432
username=app


# Create tables

/usr/bin/psql -h $server -U $username -d $database -p $port -w < ./postgres/tables/accounts.sql

