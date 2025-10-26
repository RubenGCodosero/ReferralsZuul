FROM eclipse-temurin:19-jdk-alpine
ADD target/ReferralsGateway-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
RUN apk --update add fontconfig ttf-dejavu