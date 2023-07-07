#!/bin/bash

# Function to check if a command is available
check_command() {
  command -v "$1" >/dev/null 2>&1
}

# Check Git
if check_command "git"; then
  git_version=$(git --version | awk '{print $3}')
  echo "Git is installed. Version: $git_version"
else
  echo "Git is not installed."
fi

# Check Docker
if check_command "docker"; then
  docker_version=$(docker --version | awk '{print $3}')
  echo "Docker is installed. Version: $docker_version"
else
  echo "Docker is not installed."
fi

# Check Docker Compose
if check_command "docker-compose"; then
  docker_compose_version=$(docker-compose --version | awk '{print $3}')
  echo "Docker Compose is installed. Version: $docker_compose_version"
else
  echo "Docker Compose is not installed."
fi

# Check Java
if check_command "java"; then
  java_version_output=$(java -version 2>&1)
  java_version_regex="\"(.*)\""
  
  if [[ $java_version_output =~ $java_version_regex ]]; then
    java_version=${BASH_REMATCH[1]}
    echo "Java is installed. Version: $java_version"
  else
    echo "Unable to determine Java version."
  fi
else
  echo "Java is not installed."
fi

# Check Maven
if check_command "mvn"; then
  maven_version=$(mvn --version | awk '/Apache Maven/ {print $3}')
  echo "Maven is installed. Version: $maven_version"
else
  echo "Maven is not installed."
fi
