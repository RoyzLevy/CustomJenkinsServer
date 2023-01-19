pipeline {
    agent any
    stages {
        stage('Job DSL') {
            steps {
                jobDsl script: '''
                job("my-job") {
                  description("run python script upon merge")
                    steps {
                        shell('python main.py')
                        shell('docker build -t pythonprint -f app/Dockerfile .')
                        shell('docker run pythonprint')
                    }
                }
                '''
            }
        }
    }
}
