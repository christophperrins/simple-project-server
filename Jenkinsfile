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
		sh 'mvn package -DskipTests'
		sh 'docker build -t="christophperrins/simple-server:latest" .'
                }
            }
        stage('Deploy') {
            steps {
		sh 'docker push christophperrins/simple-server:latest'
            }
        }
    }
}

