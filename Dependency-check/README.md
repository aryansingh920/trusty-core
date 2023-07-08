## Environment Check Script

The `environment-check.sh` script is a bash script that checks the availability and version of various software tools commonly used in development environments. It checks for the presence of the following tools: Git, Docker, Docker Compose, Java, and Maven.

### Usage

To use the script, simply execute it in a Unix-like environment with Bash as the default shell:

```bash
./environment-check.sh
```

The script will then perform the following checks and display the results:

1. **Git**: It checks if Git is installed by using the `git` command. If Git is found, it extracts the version number and displays it. If Git is not found, it indicates that Git is not installed.

2. **Docker**: It checks if Docker is installed by using the `docker` command. If Docker is found, it extracts the version number and displays it. If Docker is not found, it indicates that Docker is not installed.

3. **Docker Compose**: It checks if Docker Compose is installed by using the `docker-compose` command. If Docker Compose is found, it extracts the version number and displays it. If Docker Compose is not found, it indicates that Docker Compose is not installed.

4. **Java**: It checks if Java is installed by using the `java` command. If Java is found, it extracts the version number and displays it. If Java is not found, it indicates that Java is not installed.

5. **Maven**: It checks if Maven is installed by using the `mvn` command. If Maven is found, it extracts the version number and displays it. If Maven is not found, it indicates that Maven is not installed.

### Readme

To document the purpose of the script in a readme, you can use the following content:

---

## Environment Check Script

The `environment-check.sh` script is a bash script that checks the availability and version of common software tools used in development environments. It provides a quick way to verify the presence of Git, Docker, Docker Compose, Java, and Maven on a Unix-like system.

### Usage

To execute the script, follow these steps:

1. Open a terminal.
2. Navigate to the directory where the `environment-check.sh` script is located.
3. Run the script by executing the following command:

```bash
./environment-check.sh
```

### Results

After running the script, the output will display the availability and version information of each checked tool:

- Git: Displays the installed Git version, if Git is found. Otherwise, it indicates that Git is not installed.
- Docker: Displays the installed Docker version, if Docker is found. Otherwise, it indicates that Docker is not installed.
- Docker Compose: Displays the installed Docker Compose version, if Docker Compose is found. Otherwise, it indicates that Docker Compose is not installed.
- Java: Displays the installed Java version, if Java is found. Otherwise, it indicates that Java is not installed.
- Maven: Displays the installed Maven version, if Maven is found. Otherwise, it indicates that Maven is not installed.

### Note

Make sure to execute the script in a Unix-like environment with Bash as the default shell. If any of the tools are not installed, you may need to install them separately to proceed with your development tasks.

---
