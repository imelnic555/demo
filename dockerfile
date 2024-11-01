# Use a base image with JDK
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the application's code into the container
COPY . /app

# Install Maven if required
RUN apt-get update && apt-get install -y maven

# Build the application
RUN mvn clean install -DskipTests

COPY target/demo-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]


