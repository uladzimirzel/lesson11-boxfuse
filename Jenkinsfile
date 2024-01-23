pipeline {
    agent none
    stages {
        stage ('test') {
            agent {label 'builder'}
            steps {
                sh 'mkdir /var/TEST!'
            }
        }
    }
}