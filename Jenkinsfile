pipeline {
    agent none
    stages {
        stage ('test') {
            agent {label 'builder'}
            steps {
                sh 'sudo mkdir /opt/testDIR'
            }
        }
    }
}