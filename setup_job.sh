#!/bin/bash

# echo "authenticating as admin"
# echo "admin" | java -jar /usr/share/jenkins/cli.jar -s http://localhost:8080/ login --username admin --password-from-stdin

curl --silent --location http://localhost:8080/jnlpJars/jenkins-cli.jar -o /usr/share/jenkins/cli.jar

if ! java -jar /usr/share/jenkins/cli.jar -s http://localhost:8080/ get-job triggerpythonjob ; then 
    java -jar /usr/share/jenkins/cli.jar -s http://localhost:8080/ create-job triggerpythonjob < /var/jenkins_home/jobs/triggerpythonjob/config.xml && echo "Job created"
fi
