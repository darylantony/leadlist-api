#!/bin/bash

docker run \
       -d \
       -p 8000:8000 \
       -e DJANGO_SETTINGS_MODULE=people_api.settings.production \
       --name leadlist-app \
       leadlist-app

docker run \
       -d \
       -p 80:80 \
       --link leadlist-app \
       --volumes-from leadlist-app \
       --name leadlist-nginx
       leadlist-nginx
