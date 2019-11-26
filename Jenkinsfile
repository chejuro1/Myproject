pipeline {
  environment {
    registry = "chejuro/apache"
    registryCredential = 'chejuro'
    dockerImage = ''
    
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/chejuro1/Myproject.git'
      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }
    stage('packaging'){ 
      agent {
                docker { image 'dtzar/helm-kubectl' }
            }
      steps{
          
                 sh "helm create $dockerImage"
            //   package = sh "helm package ./$dockerImage"
             //  sh "helm install --name $dockerImage package  --set service.type=NodePort"
               //sh "helm repo add stable	https://kubernetes-charts.storage.googleapis.com/"
              
           }
        }
    }
  }

