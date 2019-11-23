pipeline {
    agent none 
    stages {
        stage('Build') {
            agent { docker 'maven:3-alpine' } 
            steps {
                echo 'Hello, Maven'
                sh 'mvn --version'
            }
        }
        stage('Build image') {
            agent { docker 'trion/jenkins-docker-client' } 
            steps {
                echo 'Hello, docker'
                sh 'docker -version'
            }
        }
    }
}
