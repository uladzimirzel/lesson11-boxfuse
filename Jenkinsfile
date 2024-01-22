pipeline {
  agent {
    label { 'test' }
  }
  stages {
    stage ('git'){
        steps {
            sh 'git clone https://github.com/uladzimirzel/lesson11-boxfuse'
        }
    }
  }
}
