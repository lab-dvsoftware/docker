#!/bin/bash

service nginx start
service php5-fpm start
service supervisor start

tail -f /var/log/supervisor/supervisord.log



