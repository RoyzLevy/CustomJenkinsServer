#!/bin/bash

jenkins_url="http://jenkins-server:8080"
jenkins_cli_jar_path="usr/local/bin/jenkins-cli.jar"
python_job_config_path="/var/jenkins_home/jobs/triggerpythonjob/config.xml"

# download the jenkins cli from the jenkins-server service
curl --silent --location "${jenkins_url}/jnlpJars/jenkins-cli.jar" -o "${jenkins_cli_jar_path}"

# create the trigger job based on the config file
java -jar "${jenkins_cli_jar_path}" -s "${jenkins_url}" -auth $1:$2 create-job triggerpythonjob < "${python_job_config_path}"

# build the trigger job
java -jar "${jenkins_cli_jar_path}" -s "${jenkins_url}" build triggerpythonjob
