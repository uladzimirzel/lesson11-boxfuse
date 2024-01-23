pipeline {
    agent none
    stages {
        stage ('git clone builder') {
            agent {label 'builder'}
            steps {
                dir ('/var/jenkins/workspace/lesson11/'){
                  sh 'rm -rf /var/jenkins/workspace/lesson11/'
                  sh 'git clone https://github.com/uladzimirzel/lesson11-boxfuse.git'
                }
            }
        }
    }
}