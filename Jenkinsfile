pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git branch: 'main', url: 'https://github.com/ssdevsecops/tf_mod_ec2.git'

                // Run Maven on a Unix agent.
                sh "terraform init"
                sh "terraform plan"

            
            }

            
        }
    }
}