FROM amazoncorretto:8-alpine3.21

WORKDIR /app

COPY . .

RUN ./mvnw package

EXPOSE 8080

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]