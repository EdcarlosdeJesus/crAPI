FROM openjdk:17-jdk
WORKDIR /app
COPY . /app
RUN ./gradlew build -x test
EXPOSE 8080
CMD ["java", "-jar", "build/libs/crapi-0.0.1-SNAPSHOT.jar"]
