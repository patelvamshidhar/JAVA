pipeline {
    agent any

    stages {
        stage('Build & Run in Docker') {
            steps {
                script {
                    // Using openjdk image to compile and run
                    sh '''
                    docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp openjdk:17 javac HelloWorld.java
                    docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp openjdk:17 java HelloWorld
                    '''
                }
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
