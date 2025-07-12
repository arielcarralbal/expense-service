FROM quay.io/redhattraining/ocpdev-expense-service-health:4.14

COPY pom.xml .
RUN mvn dependency:go-offline

COPY src src
RUN mvn clean package

CMD ["java", "-jar", "target/expense-service-1.0.0-SNAPSHOT-runner.jar"]
