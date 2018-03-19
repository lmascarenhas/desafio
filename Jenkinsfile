pipeline {
  agent any
  stages {
    stage('Build') {
      agent {
        docker {
          image 'node:6'
        }
        
      }
      steps {
        sh '''cd source
npm install'''
      }
    }
  }
}