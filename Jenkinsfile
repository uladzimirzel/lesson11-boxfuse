pipeline {
    agent {
        docker {image 'uladzimirzel/build-boxfuse:1.0.0'}
    }

    stages {
        stage () {
            agent {label 'builder'}
            steps {
                sh 'mkdir /var/TEST!'
            }
        }
    }
}