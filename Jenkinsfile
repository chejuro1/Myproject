podTemplate(
    name: 'project',
    label: 'jenkinskubernetes-jenkins-slave',
    containers: [
        containerTemplate(name: 'maven', image: 'maven:3-alpine'),
        containerTemplate(name: 'docker', image:'trion/jenkins-docker-client'),
    ],
    volumes: [
        hostPathVolume(mountPath: '/var/run/docker.sock',
        hostPath: '/var/run/docker.sock',
    ],
    {
      
         //node = the pod label
        node('slave'){
          
            //container = the container label
            stage('Build'){
                container('maven'){
                    // This is where we build our code.
                      steps {
                sh ' git clone git clone https://github.com/chejuro1/Myproject.git '

            }
               
              steps {
                sh 'mvn -B clean verify'
            }
                }
            }
            stage('Build Docker Image'){
                container(‘docker’){
                    // This is where we build the Docker image
                }
            }
        }
    })
