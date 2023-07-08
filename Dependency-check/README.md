# Dependency Check Script

This script is used to check the versions of various dependencies required for a project. It checks the availability and version of the following dependencies: Git, Docker, Docker Compose, Java, and Maven.

## Usage

To run the script, execute the following command:

```bash
./dependency-check.sh
```

## Dependencies

The script requires the following dependencies to be installed on your system:

- Git (version >= 2.27.0)
- Docker (version >= 20.10.3)
- Docker Compose (version >= 1.25.2)
- Java (version >= 11)
- Maven (version >= 3.6.3)

Make sure these dependencies are installed and accessible in your system's PATH before running the script.

## Script Output

The script will display the status and version of each dependency as follows:

- **Git**: Displays the installed Git version. If the version is less than 2.27.0, a message to upgrade will be shown.
- **Docker**: Displays the installed Docker version. If the version is less than 20.10.3, a message to upgrade will be shown.
- **Docker Compose**: Displays the installed Docker Compose version. If the version is less than 1.25.2, a message to upgrade will be shown.
- **Java**: Displays the installed Java version. If the version is less than 11, a message to upgrade will be shown.
- **Maven**: Displays the installed Maven version. If the version is less than 3.6.3, a message to upgrade will be shown.

If any of the dependencies are not installed, the script will inform you accordingly.

Note: This script assumes that the necessary commands (e.g., `git`, `docker`, `docker-compose`, `java`, `mvn`) are available in your system's PATH.
