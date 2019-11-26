node {
    checkout scm

    ddocker.withRegistry('https://hub.docker.com/') {

        def customImage = docker.build("my-image:${env.BUILD_ID}")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}
