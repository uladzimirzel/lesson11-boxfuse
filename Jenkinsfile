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
            sh 'cd /var/jenkins_home/workspace/newpipe/lesson11-boxfuse'
            sh 'docker build -t boxfuse-in-docker:1.0.0 .'
        }
    }
  }
}