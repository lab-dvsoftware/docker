#!/bin/bash

echo ""
env
echo ""

# start all services
exec /usr/bin/supervisord -n

