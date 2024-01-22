pipeline {
  
  agent none

  stages {
    stage ('git clone'){
        steps {
          sh 'rm -rf /var/jenkins_home/workspace/newpipe/lesson11-boxfuse'
            sh 'git clone https://github.com/uladzimirzel/lesson11-boxfuse.git /var/jenkins_home/workspace/newpipe/'
        }
    }
    stage ('build'){
        steps {
            sh 'cd /var/jenkins_home/workspace/newpipe/lesson11-boxfuse'
            sh 'docker build -t boxfuse-in-docker:1.0.0'
        }
    }
  }
}