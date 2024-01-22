pipeline {
  agent {
    docker { 
      image 'uladzimirzel/build-boxfuse:1.0.0' }
  }

  stages {
    stage ('git'){
        steps {
            sh 'git clone https://github.com/uladzimirzel/lesson11-boxfuse.git'
        }
    }
  }
}