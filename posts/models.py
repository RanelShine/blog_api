from django.db import models
from users.models import User

class Posts(models.Model):
    titre = models.CharField(max_length=255)
    contenu = models.TextField()
    date_publication = models.DateTimeField(auto_now_add=True)
    auteur = models.ForeignKey(User, on_delete=models.CASCADE)



