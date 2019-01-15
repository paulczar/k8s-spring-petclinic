FROM openjdk:11.0.1-jre-slim-sid

CMD ["/usr/bin/java", "-jar", "/app/petclinic.jar"]

# Add the service itself
ARG JAR_FILE
COPY target/${JAR_FILE} /app/petclinic.jar