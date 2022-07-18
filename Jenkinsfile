node{
    def app

    stage('Clone repo'){
        checkout scm
    }

    stage("build") {
           app = docker.build("jecalad/testing")
    }

    stage("push"){
        docker.withRegistry('http://registry.hub.docker.com', 'jecaladDockerHub') {
            app.push("${env.BUILD_NUMBER}")
        }
    }
}