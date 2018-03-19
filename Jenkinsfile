pipeline {
  agent any
  stages {
    stage('Build') {
      agent {
        node {
          label 'Npm Install'
        }
        
      }
      steps {
        sh '''cd source
npm install'''
      }
    }
  }
}