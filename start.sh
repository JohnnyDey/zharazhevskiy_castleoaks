#!/bin/bash

# Пример bash start.sh 

sudo fuser -k 8001/tcp

cd django

source venv/bin/activate
python3 src/manage.py collectstatic --noi
google-chrome 127.0.0.1:8001
python3 src/manage.py runserver 0.0.0.0:8001
