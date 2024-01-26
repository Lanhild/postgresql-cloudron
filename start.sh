#!/bin/bash

set -eu

# ensure that data directory is owned by 'cloudron' user
# chown -R cloudron:cloudron /app/data

echo "Starting application with PostgreSQL database addon..."

# run the app as user 'cloudron'
exec /usr/local/bin/gosu cloudron:cloudron node /app/code/server.js

