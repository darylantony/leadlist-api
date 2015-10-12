from .common import *

DEBUG = True

STATIC_ROOT = os.environ['STATIC_ROOT']

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': join(BASE_DIR, 'db.sqlite3'),
    }
}
