FROM openjdk:17

WORKDIR /app

COPY target/jira-1.0.jar /app/jira-1.0.jar

EXPOSE 8080

CMD ["java", "-jar", "/app/jira-1.0.jar"]