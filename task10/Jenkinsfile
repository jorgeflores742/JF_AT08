pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
				sh './task_10/gradlew clean build -p task_10'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
				sh './task_10/gradlew test -p task_10'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
