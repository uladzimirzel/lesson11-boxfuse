pipeline {
    agent none
    stages {
        stage ('test') {
            agent {label 'builder'}
            steps {
                sh 'touch test-builder.txt'
            }
        }
        stage ('test') {
            agent {label 'prod'}
            steps {
                sh 'touch test-prod.txt'
            }
        }
    }
}