pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
				sh './task10/gradle-java-at08/gradlew clean build -p task10/gradle-java-at08'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
				sh './task10/gradle-java-at08/gradlew test -p task10/gradle-java-at08'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
