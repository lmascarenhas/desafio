pipeline {
  agent any
  stages {
    stage('Build') {
      agent {
        node {
          label 'install'
        }
        
      }
      steps {
        sh '''cd source
npm install'''
      }
    }
  }
}