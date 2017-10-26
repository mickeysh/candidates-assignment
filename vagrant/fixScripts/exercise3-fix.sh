#!/bin/bash
#add fix to exercise3 here

# Allow access to our website
sed  -i  's/deny from all/Allow from all/i'  /etc/apache2/sites-available/default
# reload the apache webserver
service apache2 reload
