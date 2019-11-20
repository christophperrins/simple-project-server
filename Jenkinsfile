pipeline {
    agent any
    environment {
    VERSION = readMavenPom().getVersion()
}
stages {
	stage("version"){
		echo "${VERSION}"
}


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
		sh 'docker build -t="christophperrins/simple-server:latest'
            }
        }

  stage('Testing') {
            steps {
                echo "hello"
            }
        }
      stage('Staging') {
            steps {
                echo "hello"
            }
        }
      stage('Production') {
            when {
	        expression {
		env.BRANCH_NAME=='master'
	    }
	}
	steps {
	    echo "production"
	
            }
        }
    }
}
}
