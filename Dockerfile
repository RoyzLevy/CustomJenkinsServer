FROM jenkins/jenkins:2.375.1-lts-jdk11

ENV JENKINS_USER admin
ENV JENKINS_PASS admin
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

COPY Jenkinsfile /var/jenkins_home/
COPY jobs /var/jenkins_home/jobs/

# RUN /usr/local/bin/install-plugins.sh <plugins>
# RUN echo "Jenkins.instance.createProjectFromXML(\"triggerpythonjob\", new File(\"/var/jenkins_home/jobs/triggerpythonjob/config.xml\").text)" | java -jar jenkins-cli.jar -s http://localhost:8080/ groovy =

RUN if ! java -jar jenkins-cli.jar -s http://localhost:8080/ get-job triggerpythonjob ; then java -jar jenkins-cli.jar -s http://localhost:8080/ create-job triggerpythonjob < jobs/triggerpythonjob/config.xml && echo "Job created"; fi
