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
                sh 'sudo docker build -t boxfuse-docker:1.0.0 /home/jenkins/workspace/lesson11/lesson11-boxfuse'
            }
        }
        stage ('push nexus') {
            agent {label 'builder'}
            steps {
                sh 'sudo docker tag boxfuse-docker:1.0.0 34.118.74.35:8123/boxfuse-docker:1.0.0'
                sh 'sudo docker push 34.118.74.35:8123/boxfuse-docker:1.0.0'
            }
        }
        stage ('git clone prod') {
            agent {label 'prod'}
            steps {
                sh 'rm -rf /home/jenkins/workspace/lesson11/lesson11-docker-prod'
                sh 'git clone https://github.com/uladzimirzel/lesson11-docker-prod.git'
            }
        }
        stage ('pull to prod') {
            agent {label 'prod'}
            steps {
                sh 'cd /home/jenkins/workspace/lesson11/lesson11-docker-prod'
                sh 'sudo docker build -t boxfuse-prod:1.0.0 /home/jenkins/workspace/lesson11/lesson11-docker-prod'
                sh 'sudo docker run -d -p 8080:8080 boxfuse-prod:1.0.0'
            }
        }
    }
}