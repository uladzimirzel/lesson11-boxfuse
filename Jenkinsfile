pipeline {
    agent none
    stages {
        stage ('test') {
            agent {label 'builder'}
            steps {
                sh 'touch test.txt'
            }
        }
    }
}