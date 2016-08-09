#!/bin/bash

# run celery workers here
su -m vader -c "celery worker -A vader.celeryconf -Q default -n default@%h"