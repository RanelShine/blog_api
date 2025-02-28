from django.shortcuts import render
from rest_framework import generics
from users.models import User
from .serializers import UsersSerializer

class UserListCreateView(generics.ListCreateAPIView):
    queryset = User.objects.all()
    serializer_class = UsersSerializer

