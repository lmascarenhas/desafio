pipeline {
  agent {
    node {
      label 'Slave'
    }
    
  }
  stages {
    stage('Install') {
      agent {
        node {
          label 'Slave'
        }
        
      }
      steps {
        sh 'cd source'
      }
    }
    stage('Test') {
      agent {
        node {
          label 'Slave'
        }
        
      }
      steps {
        sh '''cd source
npm test'''
      }
    }
    stage('Test Coverage') {
      agent {
        node {
          label 'Slave'
        }
        
      }
      steps {
        sh '''cd source
npm test -- --coverage'''
      }
    }
    stage('Build') {
      agent {
        node {
          label 'Slave'
        }
        
      }
      steps {
        sh '''cd source
npm run build'''
      }
    }
  }
}