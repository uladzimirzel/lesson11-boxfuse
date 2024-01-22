pipeline {
  agent {
    docker { image 'uladzimirzel/build-boxfuse:1.0.0' }
  }

  stages {
    stage ('build'){
        steps {
            sh 'docker build -t boxfuse-in-docker:1.0.0 /var/jenkins_home/workspace/newpipe/lesson11-boxfuse'
        }
    }
  }
}