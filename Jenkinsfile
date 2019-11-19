pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                sh 'mvn test Dtest=ControllerAndServiceSuite'
              echo "Test"
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
