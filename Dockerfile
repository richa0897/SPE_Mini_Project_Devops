FROM openjdk:8
EXPOSE 8081
ADD target/calculatorDevOps-1.0-SNAPSHOT-jar-with-dependencies.jar calculatorDevOps-1.0-SNAPSHOT-jar-with-dependencies.jar
ENTRYPOINT ["java","-cp","calculatorDevOps-1.0-SNAPSHOT-jar-with-dependencies.jar","calculator.Calculator"]
