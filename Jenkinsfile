pipeline {
    agent any

    stages {
        stage('Testing Environment') {
            steps {
                    sh 'mvn test -Dtest=ControllerAndServiceSuite'
		    sh 'mvn test -Dtest=IntergrationSuite'
                }
            }
        stage('Build') {
            steps {
		echo "Build"
                }
            }
        stage('Deploy') {
            steps {
		echo "Deploy"
            }
        }
    }
}
