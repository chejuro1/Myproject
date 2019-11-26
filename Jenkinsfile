node {
    checkout scm

    docker.withRegistry('https://registry.example.com', 'chejuro') {

        def customImage = docker.build("chejuro/apache:${env.BUILD_ID}")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}
