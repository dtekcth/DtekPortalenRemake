#!/bin/bash
PROJECTNAME="portalen"
BASEPATH=/home/dtekse/$PROJECTNAME
SOCKFILE=/tmp/portalen.sock
NUM_WORKERS=3
DJANGO_SETTINGS_MODULE=portalen.settings
DJANGO_WSGI_MODULE=portalen.wsgi

echo "Starting $PROJECTNAME as `whoami`"
echo $SOCKFILE

exec /usr/local/bin/gunicorn ${DJANGO_WSGI_MODULE}:application --name $PROJECTNAME --workers $NUM_WORKERS --log-level=debug --bind=unix:$SOCKFILE -D
