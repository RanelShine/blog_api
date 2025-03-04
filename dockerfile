# Utiliser une image Python officielle
FROM python:3.12-slim

# Configurer l'environnement
ENV PYTHONUNBUFFERED 1

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier requirements.txt dans le conteneur
COPY requirements.txt .

# Mettre à jour pip, setuptools et wheel, puis installer les dépendances
RUN pip install --upgrade pip setuptools wheel && \
    pip install -r requirements.txt

# Installer les dépendances système (si tu utilises psycopg2 avec PostgreSQL)
RUN apt-get update && apt-get install -y libpq-dev gcc

# Copier le reste des fichiers du projet dans le conteneur
COPY . .

# Donner les droits d'exécution au script django.sh
RUN chmod +x /app/django.sh

# Exposer le port 8000 pour accéder à l'application Django
EXPOSE 8000

# Définir le point d'entrée pour exécuter le script django.sh
ENTRYPOINT ["/app/django.sh"]
