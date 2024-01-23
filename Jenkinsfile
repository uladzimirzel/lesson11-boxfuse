pipeline {
    agent none
    stages {
        stage ('test-build') {
            agent {label 'builder'}
            steps {
                sh 'touch test-builder.txt'
            }
        }
        stage ('test-prod') {
            agent {label 'prod'}
            steps {
                sh 'touch test-prod.txt'
            }
        }
    }
}