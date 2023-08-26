import os
import django
import datetime
import json

os.environ["DJANGO_SETTINGS_MODULE"] = "myapp.settings"
django.setup()

from django.urls import reverse
from django.contrib.auth.models import User
user = User.objects.create_user(username='admin',
                                 first_name='Admin',
                                 last_name='Nam',
                                 email='admin@myapp.co',
                                 password='picard data')
user.is_superuser = True
user.save()
