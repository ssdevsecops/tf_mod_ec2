pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                // Get some code from a GitHub repository
                git branch: 'main', url: 'https://github.com/ssdevsecops/tf_mod_ec2.git'     
            }    
        }
        stage('init') {
          steps {
            sh 'terraform init'
          }
        }
        stage('plan') {
          steps {
            sh 'terraform plan'
          }
        } 



    }
}