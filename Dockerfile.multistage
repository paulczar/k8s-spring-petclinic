FROM maven:3.6.0-jdk-11-slim
COPY . /src
WORKDIR /src
RUN mvn install -DskipTests

FROM openjdk:11.0.1-jre-slim-sid
WORKDIR /app
EXPOSE 8080
ENV VERSION=2.1.0.BUILD-SNAPSHOT
COPY --from=0 /src/target/spring-petclinic-$VERSION.jar /app/spring-petclinic.jar
CMD ["java", "-jar", "spring-petclinic.jar"]
