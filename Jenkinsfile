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
                sh 'task10/gradle-java-at08/gradlew jar -p task10/gradle-java-at08'
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: 'task10/gradle-java-at08/build/libs/**/*.jar', fingerprint: true
            archiveArtifacts artifacts: 'task10/gradle-java-at08/build/libs/**/*.war', fingerprint: true
            junit 'task10/gradle-java-at08/build/test-results/**/*.xml'
        }
    }
}
