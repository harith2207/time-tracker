//Jenkins pipeline to build java with mvn

pipeline {
    agent any

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
                    userRemoteConfigs: [[credentialsId: 'git_cred', url: 'https://github.com/myrepo2021-test/time-tracker.git']]
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
    }    

}