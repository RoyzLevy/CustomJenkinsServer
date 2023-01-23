- For the trigger to work, we need to add the host ip which runs the 2 containers to our webhooks

# Command for running Jenkins server with compose:
HOST_DOCKER_PATH=$(which docker) JENKINS_SERVER_USERNAME=enter_username JENKINS_SERVER_PASSWORD=enter_password docker-compose up -d
