## Repository Setup and Kogito Decision Service Build then copy the generated grafana dashboards to the docker-compose directory with and build the docker image

This folder src/ contains two script files, `clone.sh` and `build-kogito-decision-service.sh`, which are used to set up the repository and build a Kogito decision service with specific add-ons.

### clone.sh

Latest Commit: update readme and add commands to build docker image from kogito decision service with tracking addon | 2023-07-08 22:47:29 

1. Changes the directory to the `src` folder.
2. Removes the existing `kogito-examples` directory (if it exists) using the `rm -rf` command.
3. Clones the `kogito-examples` repository from the `kiegroup` GitHub organization using the `git clone` command.
4. Changes the directory to the `kogito-examples` folder.
5. Checks out the `stable` branch of the repository using the `git checkout` command.
6. Changes the directory back to the parent directory.

To execute this script, run the following command in the terminal:

```bash
chmod +x clone.sh
./clone.sh
```

build-kogito-decision-service.sh
The build-kogito-decision-service.sh script performs the following steps:

1. Changes the directory to src/kogito-examples/kogito-quarkus-examples/.
2. Builds the Kogito decision service with the tracing-addon and monitoring-addon by executing the Maven command: mvn clean package -DskipTests -f dmn-tracing-quarkus/pom.xml. This command compiles and packages the decision service, skipping the execution of tests.
3. Copies the generated Grafana dashboards to the docker-compose directory: cp dmn-tracing-quarkus/target/classes/META-INF/resources/monitoring/dashboards/\* trusty-demonstration/docker-compose/grafana/provisioning/dashboards/.
4. Builds the Docker image for the Kogito decision service: docker build -t org.kie.kogito/dmn-tracing-quarkus:1.0 dmn-tracing-quarkus/.

To execute this script, make sure you have already executed the clone.sh script, as it depends on the kogito-examples directory being present. Then, run the following command in the terminal:

```bash
chmod +x build-kogito-decision-service.sh
./build-kogito-decision-service.sh

```

Copy code

Make sure you have executed dependency-check.sh to check if prerequisites are already satisfied.

Please note that the execution of these scripts assumes a Unix-like environment with Bash as the default shell. If you are using a different operating system or shell, you may need to modify the scripts accordingly.

```

```
