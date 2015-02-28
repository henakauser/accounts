#!/bin/bash

# Setup Instructions
# ------------------
#
# Create a PostgreSQL user
# CREATE USER app WITH login PASSWORD 'pass.word';
#
# Open a terminal, then run the following commands:
#
# vi ~/.pgpass
#
# Add the following 2 lines to .pgpass (Without the first # on each line)
#    #hostname:port:database:username:password
#    localhost:5432:app:app:pass.word
#
# Save and close .pgpass
#
# chmod 600 ~/.pgpass
#
# Close and re-open the terminal
#
# chmod +x bin/create_database.sh
#
# cd bin
#
# ./create_database.sh
#

# Create database

/usr/bin/sudo -u postgres /usr/bin/psql -d postgres < ./postgres/drop_database.sql
/usr/bin/sudo -u postgres /usr/bin/psql -d postgres < ./postgres/create_database.sql

