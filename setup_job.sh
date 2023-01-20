#!/bin/bash

# curl http://jenkins-server:8080/

curl --silent --location http://jenkins-server:8080/jnlpJars/jenkins-cli.jar -o /usr/local/bin/jenkins-cli.jar

java -jar /usr/local/bin/jenkins-cli.jar -s http://jenkins-server:8080/ -auth admin:admin list-plugins

# cd $JENKINS_HOME/plugins
# curl -O http://updates.jenkins-ci.org/download/plugins/cobertura.hpi

# java -jar /usr/local/bin/jenkins-cli.jar -s http://jenkins-server:8080/ -auth admin:admin install-plugin workflow-job
java -jar /usr/local/bin/jenkins-cli.jar -s http://jenkins-server:8080/ -auth admin:admin install-plugin git
java -jar /usr/local/bin/jenkins-cli.jar -s http://jenkins-server:8080/ -auth admin:admin install-plugin git
java -jar /usr/local/bin/jenkins-cli.jar -s http://jenkins-server:8080/ -auth admin:admin install-plugin email-ext
java -jar /usr/local/bin/jenkins-cli.jar -s http://jenkins-server:8080/ -auth admin:admin install-plugin email-ext

sleep 120
curl http://jenkins-server:8080/safeRestart

# java -jar /usr/local/bin/jenkins-cli.jar -s http://jenkins-server:8080/ -auth admin:admin create-job triggerpythonjob < /var/jenkins_home/jobs/triggerpythonjob/config.xml && echo "Job created"
