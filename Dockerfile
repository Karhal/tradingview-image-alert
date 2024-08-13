# Utiliser une image de base officielle de Python
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers de l'application dans le conteneur
COPY . /app

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Installer le chromedriver
RUN apt-get update && apt-get install -y chromium-driver


# Exposer le port sur lequel l'application s'exécute
EXPOSE 80

# Définir la commande par défaut pour exécuter l'application
CMD ["python", "app.py"]