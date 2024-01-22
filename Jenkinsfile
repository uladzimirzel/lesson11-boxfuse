pipeline {
  agent {
    docker { image 'uladzimirzel/build-boxfuse:1.0.0' }
    label 'label'
  }

  stages {
    stage ('git'){
        steps {
            sh 'docker run -v /var/run/docker.sock:/var/run/docker.sock -ti docker'
        }
    }
  }
}