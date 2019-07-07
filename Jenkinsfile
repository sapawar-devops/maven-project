pipeline {
    agent any
    stages {
        stage('clone the code from git repo'){
          git 'https://github.com/sapawar-devops/maven-project'
          }
    }  
     {
         stage ('compile the code'){
        
            steps {
                withMaven(maven : 'LocalMaven') {
                    sh 'mvn clean compile'
                 }
              }
         }
     }
   {
         stage ('Test the code'){
        
            steps {
                withMaven(maven : 'LocalMaven') {
                    sh 'mvn clean test'
                 }
              }
         }
     }
      {
         stage ('Package the binary'){
        
            steps {
                withMaven(maven : 'LocalMaven') {
                    sh 'mvn clean package'
                 }
              }
         }
      }
    {
         stage ('Install the packagevbinary'){
        
            steps {
                withMaven(maven : 'LocalMaven') {
                    sh 'mvn clean install'
                 }
              }
         }
      }
    {
        stage ('Deploy on TOMCAT Server'){
        
        steps {
            
            sshagent (credentials: ['f31b12c8-132c-4db9-bb20-a3fb406c19e1']) {
            sh 'scp -o StrictHostKeyChecking=no */target/webapp/*.war ec2-user@13.232.3.253:/usr/share/tomcat/webapps'
         }
      }
        }
    }
 }

                    
                    
