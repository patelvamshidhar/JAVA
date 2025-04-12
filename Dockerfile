# Use OpenJDK base image
FROM openjdk:17-slim

# Set working directory
WORKDIR /app

# Copy the Java file
COPY HelloWorld.java .

# Compile the Java file
RUN javac HelloWorld.java

# Run the app
CMD ["java", "HelloWorld"]