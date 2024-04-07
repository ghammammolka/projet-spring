FROM adoptopenjdk/openjdk11:alpine-slim

WORKDIR /app

COPY target/multiplication.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
