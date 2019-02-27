pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
		        sh 'task10/gradle-java-at08/gradlew clean build -p task10/gradle-java-at08'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
				sh 'task10/gradle-java-at08/gradlew test -p task10/gradle-java-at08'
                sh 'task10/gradle-java-at08/gradlew check -p task10/gradle-java-at08'
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
