- For the trigger to work, we need to add the host ip which runs the 2 containers to our webhooks

# Command for running Jenkins server with compose:
HOST_DOCKER_PATH=$(which docker) docker-compose up -e JENKINS_SERVER=enter_server_name -e JENKINS_SERVER_USERNAME=enter_username -e JENKINS_SERVER_PASSWORD=enter_password -d
