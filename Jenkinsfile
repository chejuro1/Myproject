pipeline {
    agent none
    stages {
        stage('Build') {
             agent {
                label "maven"
            }
            steps {
                echo 'Hello World'
            }
        }
        stage('Deploy') {
            agent {
                label "docker"
            }
            when {
                beforeAgent true
                branch 'production'
            }
            steps {
                echo 'Deploying'
            }
        }
    }
}
