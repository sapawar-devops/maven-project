pipeline {
    agent any
    stages {
        stage('clone the code from git repo'){
            steps {
            git 'https://github.com/sapawar-devops/maven-project'
          } 
        }   
         stage ('Install the packagevbinary'){
        
            steps {
                withMaven(maven : 'LocalMaven') {
                    sh 'mvn clean package'
                 }
              }
         }
        stage ('Deploy on TOMCAT Server'){
        
        steps {
            
            sshagent (credentials: ['f31b12c8-132c-4db9-bb20-a3fb406c19e1']) {
            sh 'scp -o StrictHostKeyChecking=no */target/*.war ec2-user@13.235.135.73:/usr/share/tomcat/webapps'
         }
      }
        }
    }
 }

                    
                    
