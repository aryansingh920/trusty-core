#!/bin/bash

docker_image_tag="org.kie.kogito/dmn-tracing-quarkus:1.0"
compose_file="docker-compose.yml"
compose_directory="kogito-examples/kogito-quarkus-examples/trusty-demonstration/docker-compose"

# Change directory to the compose directory
echo "Changing directory to $compose_directory"
cd "$compose_directory" || exit 1

# Replace line 48 in docker-compose.yaml with the specified image tag
echo "Updating $compose_file with image tag: $docker_image_tag"
sed -i '' "48s@^    image:.*@    image: $docker_image_tag@" "$compose_file"

echo "Updated $compose_file with image tag: $docker_image_tag"

echo "Starting docker-compose"
docker-compose up
