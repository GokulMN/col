pipeline {
  agent any
  stages {
    stage ('checkout') {
    steps {
     checkout scm
          }
                       }
   stage ('Build')     {
    steps {
     echo 'Running Build Automation'
 
          }
                        }
    
       stage('docker images code') { 
 		steps {
  			script {
          sh'pwd'
       				sh 'docker build  -t  suneelkulk/col .'
              sh 'docker run -p 8090:8090 -d suneelkulk/col'
        }
    }
  }
 }
}
