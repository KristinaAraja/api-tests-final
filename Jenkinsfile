pipeline {
    agent any
    stages {
        stage('build-docker-image') {
            steps {
                echo "Building docker image.."
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
