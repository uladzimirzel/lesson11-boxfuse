pipeline {
    agent none
    stages {
        stage ('git clone builder') {
            agent {label 'builder'}
            steps {
                sh 'rm -rf /var/jenkins/workspace/lesson11/'
                sh 'git clone https://github.com/uladzimirzel/lesson11-boxfuse.git'
            }
        }
        stage ('') {
            agent {label 'prod'}
            steps {
                sh 'cd /var/jenkins/workspace/lesson11/lesson11-boxfuse'
                sh 'docker build -t boxfuse:1.0.0 /var/jenkins/workspace/lesson11/lesson11-boxfuse'
            }
        }
    }
}