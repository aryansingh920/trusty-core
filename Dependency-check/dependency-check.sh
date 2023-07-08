#!/bin/bash

# Function to check if a command is available
check_command() {
  command -v "$1" >/dev/null 2>&1
}

# Check Git
if check_command "git"; then
  git_version=$(git --version | awk '{print $3}')
  if [[ "$git_version" > "2.27.0" ]]; then
    echo "Git is installed. Version: $git_version (>= 2.27.0)"
  else
    echo "Git is installed. Version: $git_version (Please upgrade to >= 2.27.0)"
  fi
else
  echo "Git is not installed."
fi

# Check Docker
if check_command "docker"; then
  docker_version=$(docker --version | awk '{print $3}')
  if [[ "$docker_version" > "20.10.3" ]]; then
    echo "Docker is installed. Version: $docker_version (>= 20.10.3)"
  else
    echo "Docker is installed. Version: $docker_version (Please upgrade to >= 20.10.3)"
  fi
else
  echo "Docker is not installed."
fi

# Check Docker Compose
if check_command "docker-compose"; then
  docker_compose_version=$(docker-compose version --short)
  if [[ "$docker_compose_version" > "1.25.2" ]]; then
    echo "Docker Compose is installed. Version: $docker_compose_version (>= 1.25.2)"
  else
    echo "Docker Compose is installed. Version: $docker_compose_version (Please upgrade to >= 1.25.2)"
  fi
else
  echo "Docker Compose is not installed."
fi

# Check Java
if check_command "java"; then
  java_version_output=$(java -version 2>&1)
  java_version_regex="\"(.*)\""
  
  if [[ $java_version_output =~ $java_version_regex ]]; then
    java_version=${BASH_REMATCH[1]}
    if [[ "$java_version" > "11" ]]; then
      echo "Java is installed. Version: $java_version (>= 11)"
    else
      echo "Java is installed. Version: $java_version (Please upgrade to >= 11)"
    fi
  else
    echo "Unable to determine Java version."
  fi
else
  echo "Java is not installed."
fi

# Check Maven
if check_command "mvn"; then
  maven_version=$(mvn --version | awk '/Apache Maven/ {print $3}')
  if [[ "$maven_version" > "3.6.3" ]]; then
    echo "Maven is installed. Version: $maven_version (>= 3.6.3)"
  else
    echo "Maven is installed. Version: $maven_version (Please upgrade to >= 3.6.3)"
  fi
else
  echo "Maven is not installed."
fi
