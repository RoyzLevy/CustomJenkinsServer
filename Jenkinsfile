pipeline {
    agent any
    stages {
        stage('print message') {
            steps {
                // sh 'python main.py'
                sh 'cd app'
                sh 'docker build -t pythonprint .'
                sh 'docker run pythonprint'
            }
        }
    }
}