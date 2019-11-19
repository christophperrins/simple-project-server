pipeline {
    agent any

    stages {
        stage('Testing Environment') {
            steps {
                    sh 'mvn test -Dtest=ControllerAndServiceSuite'
                    sh 'mvn test -Dtest=IntegrationSuite'
                }
            }
        stage('Build') {
            steps {
		sh "mvn package -DskipTests"
                }
            }
        stage('Deploy') {
            steps {
		sh 'docker build -t="christophperrins/simple-server:latest" .'
            }
        }
    }
}

