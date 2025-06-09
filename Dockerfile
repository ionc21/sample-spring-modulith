FROM eclipse-temurin:21.0.7_6-jre-alpine
WORKDIR /app
COPY target/sample-spring-modulith-1.0-SNAPSHOT.jar /app/app.jar
#COPY ./opentelemetry/opentelemetry-javaagent.jar /app/otel-agent.jar

CMD ["java", "-jar", "/app/app.jar"]
#CMD ["java", "-javaagent:/app/otel-agent.jar", "-jar", "/app/app.jar"]
