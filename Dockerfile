FROM adoptopenjdk/openjdk11:alpine-slim

WORKDIR /app

COPY target/maven.wrapper.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
