pipeline {
    agent any
    stages {
        stage('clone the code from git repo'){
          git 'https://github.com/sapawar-devops/maven-project.git'
          }
        stage ('compile the code'){
        
            steps {
                withmaven (maven : 'LocalMaven') {
                    sh 'mvn compile'
                    
                    }
                    }
                    }
                    }
                    }
                    
                    
