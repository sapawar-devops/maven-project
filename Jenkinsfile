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
}

                    
                    
