pipeline {
  agent {
    docker {
      image 'node:6'
      args '-u 0:0'
    }
    
  }
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