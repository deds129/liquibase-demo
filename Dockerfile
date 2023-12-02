FROM openjdk:21-jdk-slim
WORKDIR /opt/app
ARG JAR_FILE=build/libs/*.jar

COPY src/main/resources .
COPY ${JAR_FILE} liquibase-demo.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "liquibase-demo.jar"]