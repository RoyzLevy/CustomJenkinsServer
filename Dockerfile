FROM jenkins/jenkins:lts

ENV JENKINS_USER admin
ENV JENKINS_PASS admin
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

USER root
COPY Jenkinsfile /var/jenkins_home/
COPY jobs /var/jenkins_home/jobs/
USER jenkins

RUN /usr/local/bin/install-plugins.sh <plugins>
RUN echo "Jenkins.instance.createProjectFromXML(\"triggerpythonjob\", new File(\"/var/jenkins_home/jobs/triggerpythonjob/config.xml\").text)" | java -jar jenkins-cli.jar -s http://localhost:8080/ groovy =