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
    stage('deploy') {
      steps {
        sh 'docker stop hello_demo || true && docker rm hello_demo || true'
        sh 'docker run -d --name=hello_demo --volumes-from=$HOSTNAME -w `pwd`/build/libs -p 8100:8989 openjdk:8-jre sh -c "cp hello-0.0.1.jar /home/app.jar; cd /home; java -jar app.jar --server.port=8989"'
      }
    }
   stage('test') {
      steps {
        sh './gradlew cucumber'
      }
    }
  }
}