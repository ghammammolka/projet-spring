# Utilise l'image openjdk officielle en tant qu'image de base
FROM openjdk:11-jre-slim

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie les fichiers .class du répertoire classes
COPY target/classes/ /app/classes/

# Copie les fichiers .class du répertoire test-classes
COPY target/test-classes/ /app/test-classes/

# Copie le fichier JAR de l'application Spring Boot dans le conteneur
COPY target/*.jar app.jar

# Expose le port 8080 pour que les demandes puissent y accéder
EXPOSE 8080

# Commande à exécuter lorsque le conteneur démarre
CMD ["java", "-jar", "app.jar"]

