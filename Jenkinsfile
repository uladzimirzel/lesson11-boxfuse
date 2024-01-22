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
            sh 'docker build -t boxfuse-in-docker:1.0.0 .'
        }
    }
    stage ('push to nexus'){
        steps {
            withCredentials([usernamePassword(credentialsId: 'ca00e527-ab56-4902-bc59-4bfebafde987', passwordVariable: 'password', usernameVariable: 'login')]) {
            sh 'docker tag boxfuse-in-docker:1.0.0 34.116.254.166:8083/boxfuse-in-docker:1.0.0'
            sh 'docker push 34.116.254.166:8083/boxfuse-in-docker:1.0.0'
          }     
        }
    }
  }
}