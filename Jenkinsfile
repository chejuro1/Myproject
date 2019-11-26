node {
    docker.withRegistry('https://hub.docker.com/', 'chejuro') {

        git url: "https://github.com/chejuro1/Myproject.git", credentialsId: 'chejuro1'

        sh "git rev-parse HEAD > .git/commit-id"
        def commit_id = readFile('.git/commit-id').trim()
        println commit_id

        stage "build"
        def app = docker.build "myproject"

        stage "publish"
        app.push 'master'
        app.push "${commit_id}"
    }
}
