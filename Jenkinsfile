pipeline {

    agent any


    environment {
    VERSION = readMavenPom().getVersion()
    }


    stages {

        stage('Test') {
            steps {
                echo "${VERSION}"
            }

        }

    }

}

