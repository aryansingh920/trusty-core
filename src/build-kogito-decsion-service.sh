cd kogito-examples/

cd kogito-quarkus-examples/

export M2_HOME=/usr/local/apache-maven-3.9.3
export PATH=$M2_HOME/bin:$PATH

echo "Build a Kogito decision service with the tracing-addon and the monitoring-addon. For example kogito-examples/kogito-quarkus-examples/dmn-tracing-quarkus is already prepared, so you can compile and package it with"
mvn clean package -DskipTests -f dmn-tracing-quarkus/pom.xml

echo "Copy the generated grafana dashboards to the docker-compose directory with"
cp dmn-tracing-quarkus/target/classes/META-INF/resources/monitoring/dashboards/* trusty-demonstration/docker-compose/grafana/provisioning/dashboards/

echo "Build the docker image"
docker build -t org.kie.kogito/dmn-tracing-quarkus:1.0 dmn-tracing-quarkus/
