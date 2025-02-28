from posts.models import Posts
from rest_framework import serializers


class PostsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Posts
        fields = ['id', 'titre', 'contenu', 'date_publication', 'auteur']
