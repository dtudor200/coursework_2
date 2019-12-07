environment {
    registry = "dtudor200/coursework2"
    registryCredential = 'docker'
}




node {
      for (i=0; i<2; i++) { 
           stage "Checkout SCM"
           print 'Hello, world !'
           if (i==0)
           {
               git url : 'https://github.com/dtudor200/coursework_2.git'
               echo 'Checkout SCM'
           }
         else {           
           stage "Build Code"
               
               echo 'Build bit here'
                
           stage "Static Code Test"

               build 'Static_Code_Test'
               echo 'Static Code Test'
             
           stage "Build Image"
               dockerImage = ''
               dockerImage = docker.build.registry + ":$BUILD_NUMBER"
               echo 'Build Docker Image'

           stage "Push Image"
               docker.withRegistry( '', registryCredential ) {
               dockerImage.push()
               echo 'Push Image to Docker Hub'
              }             
}

      }
}
