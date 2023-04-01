pipeline {
    agent {
        label 'ansible'
    }

    stages {
        stage('Build') {
            steps {
                sh "git clone 'https://github.com/SomovAA/vector-role.git'"
                sh "cd vector-role"
            }
        }
        stage('Test') {
            steps {
                sh "molecule test -s podman"
            }
        }
    }
}