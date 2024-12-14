pipeline {
    agent any
    triggers {
        pollSCM('*/1 * * * *')
    }
    stages {
        stage('build-docker-image') {
            steps {
                buildImage()
            }
        }
    }
}
def buildImage(){
    echo "Building docker image....."
    sh 'docker build -t kristinaaraja/api-tests:latest .'

    echo "Pushing image for docker registry.."
    sh 'docker push kristinaaraja/api-tests:latest'
}
