pipeline {
  agent {
    docker { 
      image 'uladzimirzel/build-boxfuse:1.0.0' }
  }

  stages {
    stage ('git'){
        steps {
            sh 'rm -rf lesson11-boxfuse'
            sh 'git clone https://github.com/uladzimirzel/lesson11-boxfuse.git'
        }
    }
    stage ('build'){
        steps {
            sh 'docker build -t boxfuse-in-docker:1.0.0'
        }
    }
  }
}