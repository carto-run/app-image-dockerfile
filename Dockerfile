FROM maven:3.8.6 as builder

COPY src src
COPY pom.xml pom.xml

RUN mvn package

FROM eclipse-temurin:17.0.7_7-jre-jammy

COPY --from=builder target/app-image-dockerfile-0.0.1-SNAPSHOT.jar .

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app-image-dockerfile-0.0.1-SNAPSHOT.jar"]
