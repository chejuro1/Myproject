pipeline {
 
  agent any
  stages {
   
    stage('packaging'){ 
      agent {
                docker { image 'dtzar/helm-kubectl' }
            }
      steps{
          
                 sh "helm create dockerImage"
            //   package = sh "helm package ./$dockerImage"
             //  sh "helm install --name $dockerImage package  --set service.type=NodePort"
               //sh "helm repo add stable	https://kubernetes-charts.storage.googleapis.com/"
              
           }
        }
    }
  }

