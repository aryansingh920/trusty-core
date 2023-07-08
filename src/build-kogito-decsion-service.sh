cd src/kogito-examples/
echo "Build a Kogito decision service with the tracing-addon and the monitoring-addon. For example kogito-examples/kogito-quarkus-examples/dmn-tracing-quarkus is already prepared, so you can compile and package it with"
mvn clean package -DskipTests -f kogito-quarkus-examples/dmn-tracing-quarkus/pom.xml
