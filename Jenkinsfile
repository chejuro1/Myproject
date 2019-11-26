pipeline {
    agent {
        docker {
            image 'dtzar/helm-kubectl' 
             
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh 'Helm create package' 
            }
        }
    }
}

