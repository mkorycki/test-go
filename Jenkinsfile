pipeline {
    agent { docker { image 'golang' } }
    stages {
        stage('build') {
            steps {
                sh 'CGO_ENABLED=0 go build'
            }
        }
    }
}
