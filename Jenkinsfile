pipeline {
    agent any
    stages {
        stage('clone the code from git repo'){
          git clone https://github.com/sapawar-devops/maven-project
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
                    
                    
