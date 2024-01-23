pipeline {
    agent none
    stages {
        stage ('git clone builder') {
            agent {label 'builder'}
            steps {
                  sh 'git clone https://github.com/uladzimirzel/lesson11-boxfuse.git'
            }
        }
    }
}