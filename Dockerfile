FROM openjdk:21
RUN mkdir -p /app
WORKDIR /app
COPY ./target/eStoreBackend-0.0.1-SNAPSHOT.jar /app

CMD ["java", "-jar", "eStoreBackend-0.0.1-SNAPSHOT.jar"]
