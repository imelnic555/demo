# Use a base image with JDK
# Use a base image with JDK
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Install Maven if required
RUN apt-get update && apt-get install -y maven

# Build the application
RUN mvn clean install -DskipTests
ENTRYPOINT ["java","-jar","./target/demo-0.0.1-SNAPSHOT.jar"]

