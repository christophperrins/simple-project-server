pipeline {
    agent any

    stages {
        stage('Testing Environment') {
            steps {
                    sh 'mvn test -Dtest=ControllerAndServiceSuite'
                }
            }
        stage('Build') {
            steps {
                }
            }
        stage('Deploy') {
            steps {
            }
        }
    }
}
