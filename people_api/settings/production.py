from .common import *

DEBUG = False
ALLOWED_HOSTS = []

INSTALLED_APPS += ('storages',)
AWS_STORAGE_BUCKET_NAME = "leadlist-django-bucket"
STATICFILES_STORAGE = 'storages.backends.s3boto.S3BotoStorage'
S3_URL = 'http://%s.s3.amazonaws.com/' % AWS_STORAGE_BUCKET_NAME
STATIC_URL = S3_URL

DATABASES = {    
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'leadlist-api-db',
        'USER' : 'masterdb',
        'PASSWORD' : '#fact7231',
        'HOST' : 'leadlist-api-db.c31uz1pvkqes.us-west-2.rds.amazonaws.com',
        'PORT' : '5432',
    }
}
