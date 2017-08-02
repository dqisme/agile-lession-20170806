pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        git 'https://github.com/dqisme/agile-lession-20170806.git'
      }
    }
    stage('build') {
      steps {
        sh './gradlew clean build'
      }
    }
    stage('test') {
      steps {
        sh './gradlew cucumber'
      }
    }
  }
}