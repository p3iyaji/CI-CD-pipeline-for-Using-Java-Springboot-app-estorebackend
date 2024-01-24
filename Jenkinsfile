pipeline {
  agent any 
  tools{
    maven 'MAVEN'        
  }
  stages{
      stage("Clone the project") {
          steps{
            git branch: 'main', url: 'https://github.com/p3iyaji/estorebackend.git'
          }
      }

      stage("Compilation") {
          steps{
            sh 'mvn clean install'
          }
        
      }
    
      stage("build docker image") {
          steps{
              script{
                sh 'docker build -t estorebkjen .'
              }
            
          }
        
      }
    
      stage("create container"){
          steps{
              script{
                sh 'docker run -d -p 8080:8080 --name estorebackendjen estorebkjen:latest'
              }
            
          }
      }
    }
  

}
