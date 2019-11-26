node {
    checkout scm

    ddocker.withRegistry('https://hub.docker.com/','chejuro') {

        def customImage = docker.build("chejuro/apache:${env.BUILD_ID}")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}
