pipeline {
  environment {
    registry = "DTUDOR200/coursework2"
    registryCredential = 'dockerhub'
  }

  agent any

node {     
           stage "Checkout SCM"
               git url : 'https://github.com/dtudor200/coursework_2.git'
               echo 'Checkout SCM'
                              
           stage "Static Code Test" 
               build 'Static_Code_Test'
               echo 'Static Code Test'
              
           stage "Build Image" 
               sh 'docker build -t dtudor200/coursework2:$BUILD_NUMBER .'
               echo 'Build Docker Image'
             
           stage "Push Image" 
               withCredentials([string(credentialsId: 'docker', variable: 'dockerhub')]) {
               sh "docker login -u dtudor200 -p ${dockerhub}"
               }
               
               sh 'docker push dtudor200/coursework2:$BUILD_NUMBER'
               echo 'Push Image to Docker Hub'


           stage "Deploy to Kube"
              build 'Kubernettes'
              echo 'Deploy to Kubernettes'
          
              }             
             
}
      
