# Use official Java runtime as base
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy source code into container
COPY myapp/*.java .

# Compile Java code
RUN javac Main.java

# Define default command to run when container starts
CMD ["java", "Main"]
