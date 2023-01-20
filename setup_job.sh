#!/bin/bash

RUN curl --silent --location http://jenkins-server:8080/jnlpJars/jenkins-cli.jar -o /usr/local/bin/jenkins-cli.jar

if ! java -jar /usr/local/bin/jenkins-cli.jar -s http://172.17.0.1:8080/ -auth admin:admin get-job triggerpythonjob ; then 
    java -jar /usr/local/bin/jenkins-cli.jar -s http://172.17.0.1:8080/ -auth admin:admin create-job triggerpythonjob < /var/jenkins_home/jobs/triggerpythonjob/config.xml && echo "Job created"
fi

# if curl --silent --location http://localhost:8080/jnlpJars/jenkins-cli.jar -o /var/jenkins_home/cli.jar; then
#     echo "Installed jenkins cli"
#     if ! java -jar /var/jenkins_home/cli.jar -s http://localhost:8080/ -auth admin:admin get-job triggerpythonjob ; then 
#         java -jar /var/jenkins_home/cli.jar -s http://localhost:8080/ -auth admin:admin create-job triggerpythonjob < /var/jenkins_home/jobs/triggerpythonjob/config.xml && echo "Job created"
#     fi
# else
#     echo "Something went wrong"
# fi
# echo "Done!"
