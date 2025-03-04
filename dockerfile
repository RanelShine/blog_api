
FROM python:3.12-slim


ENV PYTHONUNBUFFERED 1


WORKDIR /app


COPY requirements.txt .


RUN pip install --upgrade pip && \
    pip install -r requirements.txt


COPY . .

CMD ["bash", "/app/django.sh"]


EXPOSE 8000

# Définir le point d'entrée pour exécuter le script django.sh
ENTRYPOINT ["/app/django.sh"]