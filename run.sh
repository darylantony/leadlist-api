#!/bin/bash

exec docker run --rm -d -p 8000:8000 leadlist-app;

exec docker run leadlist-app \
     -d \
     -p 8000:8000 \
     -e DJANGO_SETTINGS_MODULE=people_api.settings.development

