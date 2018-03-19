pipeline {
  agent any
  stages {
    stage('Install') {
      agent {
        docker {
          image 'node:9'
          args '-u 0:0'
        }
        
      }
      steps {
        sh '''cd source
npm install'''
      }
    }
    stage('Test') {
      agent {
        docker {
          image 'node:9'
          args '-u 0:0'
        }
        
      }
      steps {
        sh '''cd source
npm test'''
      }
    }
    stage('Test Coverage') {
      agent {
        docker {
          image 'node:9'
          args '-u 0:0'
        }
        
      }
      steps {
        sh '''cd source
npm test -- --coverage'''
      }
    }
  }
}