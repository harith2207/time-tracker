//Jenkins pipeline to build java with mvn

pipeline {
    agent any
    
    tools{
           maven 'apache-maven-3.8.5'
    }
    
    parameters{
        choice(name: 'BRANCH', choices: ['master', 'jenkins'], description: 'Pick Branch to Build')
    }

    stages{
        stage ('Git Checkout') {
            steps {
                checkout ([
                    $class: 'GitSCM',
                    branches: [[name: '*/jenkins']],
                    doGenerateSubmoduleConfigurations: false,
                    extensions: [[$class: 'CleanBeforeCheckout']],
                    submoduleCfg: [],
                    userRemoteConfigs: [[credentialsId: 'git_cred', url: 'https://github.com/harith2207/time-tracker.git']]
                ])

            }
        }
        
        stage ('To execute a script') {
            steps {
                echo "Running script"
                sh 'chmod +x sample.sh'
                sh './sample.sh'
            }
        }
        // Maven compile Stage
        stage ('mvn Build Stage') {
            steps {
                echo "Running the Build"
                sh 'mvn clean package'
            }
        }
        // Clean Workspace
      post {
        always {
            cleanWs()
        }
    } 
  }
}
