 pipeline {
    agent any
    tools {
        terraform 'terraform' 
    }
    stages {
        stage('GIT Checkout') {
            steps {
                git branch: 'main', credentialsId: 'd09c54e6-6f7d-41e9-b80d-c4a460543e82', url: 'https://github.com/Sanoj404/pipelinecraft321predemo1.git'
            }
        }    
        stage('Terraform init') {
            steps {
                sh 'terraform init --auto-approve'
            }
        }    
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            } 
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply --auto-approve'
            } 
        }
    }
}    
