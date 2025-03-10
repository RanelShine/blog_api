# Blog API

Ce projet est une API REST pour un blog, construite avec Django et Django REST Framework (DRF).

## Prérequis

- Python 3.11
- Django 5.1.6
- Django REST Framework
- Un environnement virtuel 

## Installation

1. **Cloner le dépôt**
   ```bash
   git clone https://github.com/RanelShine/blog_api.git
   cd blog_api
   ```

2. **Créer un environnement virtuel**
   ```bash
   python -m venv venv
   source venv/bin/activate  # Sur macOS/Linux
   venv\Scripts\activate  # Sur Windows
   ```

3. **Installer les dépendances**
   ```bash
   pip install -r requirements.txt
   ```

4. **Configurer la base de données**
   ```bash
   python manage.py makemigrations
   python manage.py migrate
   ```


5. **Lancer le serveur**
   ```bash
   python manage.py runserver
   ```
   L'API sera accessible sur `http://127.0.0.1:8000/`.

## Configuration

- Assurez-vous que dans `settings.py`, le modèle utilisateur est bien défini :
  ```python
  AUTH_USER_MODEL = 'users.User'
  ```

- Ajoutez `rest_framework` et l'application `users` dans `INSTALLED_APPS`.

## Endpoints principaux

| Méthode  | URL                  | Description |
|----------|----------------------|-------------|
| `POST`   | `/api/register/`      | Inscription d'un utilisateur |
| `POST`   | `/api/login/`         | Connexion |
| `GET`    | `/api/posts/`         | Liste des articles |
| `POST`   | `/api/posts/`         | Création d'un article |
| `GET`    | `/api/posts/{id}/`    | Détails d'un article |
| `PUT`    | `/api/posts/{id}/`    | Modification d'un article |
| `DELETE` | `/api/posts/{id}/`    | Suppression d'un article |

## Tests

Pour exécuter les tests :
```bash
python manage.py test
```


