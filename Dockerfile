FROM gradle:7.6.2-jdk17
WORKDIR /app
COPY . /app
RUN gradle build -x test
EXPOSE 8080
CMD ["java", "-jar", "build/libs/crapi-0.0.1-SNAPSHOT.jar"]

