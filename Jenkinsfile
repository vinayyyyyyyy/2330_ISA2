pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/vinayyyyyyyy/2330_ISA2.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    bat 'docker build -t vinayyy/2330_ISA2 .'
                }
            }
        }
        stage('Run Container') {
            steps {
                script {
                    try {
                        bat 'docker rm -f 2330'
                    } catch (Exception e) {
                        echo "No existing container to remove"
                    }
                    bat 'docker run -d --name 2330-container vinayyy/2330_ISA2'
                }
            }
        }
    }
}
