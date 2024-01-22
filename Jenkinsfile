pipeline {
  agent any
  stages {
    stage ('git clone'){
        steps {
            sh 'rm -rf lesson11-boxfuse'
            sh 'git clone https://github.com/uladzimirzel/lesson11-boxfuse.git'
        }
    }
    stage ('build'){
        steps {
            sh 'cd lesson11-boxfuse'
            sh 'docker build -t boxfuse-in-docker:$version .'
        }
    }
    stage ('push to nexus'){
        steps {
            withCredentials([usernamePassword(credentialsId: '06b76f10-13f1-43e0-ba96-d41a82c2d527', passwordVariable: 'password', usernameVariable: 'login')]) {
            sh 'docker login 34.116.254.166:8083 -u $login -p $password'
            }
            sh 'docker tag boxfuse-in-docker:$version 34.116.254.166:8083/boxfuse-in-docker:$version'
            sh 'docker push 34.116.254.166:8083/boxfuse-in-docker:$version'
        }
    }
    stage ('git clone prod'){
        steps {
            sh 'rm -rf lesson11-docker-prod'
            sh 'git clone https://github.com/uladzimirzel/lesson11-docker-prod'
        }
    }
    stage ('push to prod'){
        steps {
            sh 'cd lesson11-docker-prod'
            sh 'docker build -t lesson11-docker-prod .'
            sh 'docker run -d -p 8080:8080 lesson11-docker-prod'
        }
    }
  }
}