pipeline {
    agent any
    stages {
        stage('print message') {
            steps {
                sh 'python main.py'
                // sh 'docker build -t pythonprint -f app/Dockerfile .'
                // sh 'docker run pythonprint'
            }
        }
    }
}
