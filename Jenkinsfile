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
<<<<<<< HEAD
				sh './task10/gradle-java-at08/gradlew test -p task10/gradle-java-at08'
                sh './task10/gradle-java-at08/gradlew check -p task10/gradle-java-at08'
=======
		sh './task10/gradle-java-at08/gradlew test -p task10/gradle-java-at08'
>>>>>>> 1c4340140a1c335991c133f04e26c80c6a14143d
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }

    post {
        always {
            // archiveArtifacts artifacts: 'gradle-jenkins-at08/**/gradle-wrapper.jar', fingerprint: true
            archiveArtifacts artifacts: 'build/libs/**/*.jar', fingerprint: true
            junit 'build/reports/**/*.xml'
        }
    }
}
