pipeline {
    agent any

    stages {
	stage("version") {
	    steps {
		pom = readMavenPom file: 'pom.xml'
                echo pom.version
	    }
	}
    }
}

