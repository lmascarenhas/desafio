pipeline {
  agent none
  stages {
    stage('Build') {
      agent {
        docker {
          image 'node:6'
          args '-u 0:0'
        }
        
      }
      steps {
        sh 'cd source && npm install'
      }
    }
  }
}