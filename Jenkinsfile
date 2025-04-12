pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                echo 'Cloning repository...'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Compiling Java file...'
                sh 'javac HelloWorld.java'
            }
        }

        stage('Test') {
            steps {
                echo 'Running the application...'
                sh 'java HelloWorld'
            }
        }

        stage('Docker Build') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t java-hello-world .'
            }
        }

        stage('Docker Run') {
            steps {
                echo 'Running Docker container...'
                sh 'docker run --rm java-hello-world'
            }
        }
    }
}