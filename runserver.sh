#!/bin/bash

export PYTHONPATH=/code:$PYTHONPATH

sleep 10

# Migrate db so we have latest db schema
su -m vader -c "pyhon manage.py migrate"

# Start the server on port 8000
su -m vader -c "python manage.py runserver 0.0.0.0:8000"
