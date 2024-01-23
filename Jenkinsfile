pipeline {
    agent none
    stages {
        stage ('git clone builder') {
            agent {label 'builder'}
            steps {
                sh 'rm -rf /home/jenkins/workspace/lesson11/lesson11-boxfuse' 
                sh 'git clone https://github.com/uladzimirzel/lesson11-boxfuse.git'
            }
        }
        stage ('build image') {
            agent {label 'builder'}
            steps {
                sh 'cd /home/jenkins/workspace/lesson11/lesson11-boxfuse' 
                sh 'docker build -t boxfuse-docker:1.0.0 /home/jenkins/workspace/lesson11/lesson11-boxfuse'
            }
        }
    }
}