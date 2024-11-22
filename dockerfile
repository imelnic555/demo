# Use a base image with JDK
# Use a base image with JDK
FROM maven:3.9.9-eclipse-temurin-21-alpine AS build

# Set the working directory
WORKDIR /app
COPY . /app
# Install Maven if required
# RUN apt-get update && apt-get install -y maven

# Build the application
RUN mvn clean install -DskipTests

FROM eclipse-temurin-21-jre-alpine
WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

CMD [ "java", "-jar", "app.jar" ]

