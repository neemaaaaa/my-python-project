FROM python:3.11-slim

# Installer les dépendances
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier le code de l'application
COPY . .

# Exécuter les tests avec pytest
CMD ["pytest"]

