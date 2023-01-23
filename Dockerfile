FROM jenkins/jenkins:2.327-jdk11

ENV JENKINS_USER $JENKINS_SERVER_USERNAME
ENV JENKINS_PASS $JENKINS_SERVER_PASSWORD
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

RUN /usr/local/bin/install-plugins.sh workflow-job github python workflow-aggregator credentials-binding
