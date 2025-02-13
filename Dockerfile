FROM maven:3-eclipse-temurin-23-alpine AS build

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean package -DskipTests
#RUN ls -al /app/target
FROM sapmachine:jre-headless-ubuntu-noble

COPY --from=build /app/target/student-api.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
