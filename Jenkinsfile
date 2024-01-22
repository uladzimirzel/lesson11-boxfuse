pipeline {
  agent {
    docker { image 'uladzimirzel/build-boxfuse:1.0.0' }
  }

  stages {
    stage ('git clone'){
        steps {
            sh 'git clone https://github.com/uladzimirzel/lesson11-boxfuse.git'
        }
    }
    stage ('build'){
        steps {
            sh 'cd /var/jenkins_home/workspace/newpipe/build-boxfuse'
            sh 'docker build -t boxfuse-in-docker:1.0.0'
        }
    }
  }
}