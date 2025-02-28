from django.db import models
from django.contrib.auth.models import AbstractUser


class User(AbstractUser):
    nom = models.CharField(max_length=255) 
    email = models.EmailField(unique=True)
    date_inscription = models.DateTimeField(auto_now_add=True)
    

