FROM jenkins/jenkins:lts

ENV JENKINS_USER admin
ENV JENKINS_PASS admin
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

COPY Jenkinsfile /var/jenkins_home/
COPY jobs /var/jenkins_home/jobs/

RUN /usr/local/bin/install-plugins.sh <plugins>
RUN echo "Jenkins.instance.createProjectFromXML(\"<job_name>\", new File(\"/var/jenkins_home/jobs/<job_name>/config.xml\").text)" | java -jar jenkins-cli.jar -s http://localhost:8080/ groovy =