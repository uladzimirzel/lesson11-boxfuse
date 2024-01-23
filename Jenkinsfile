pipeline {
    agent none
    stages {
        stage ('git clone builder') {
            agent {label 'builder'}
            steps {
                sh 'rm -rf /var/jenkins/workspace/lesson11/lesson11-boxfuse' 
                sh 'git clone https://github.com/uladzimirzel/lesson11-boxfuse.git'
            }
        }
    }
}