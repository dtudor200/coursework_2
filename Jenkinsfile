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
               sh 'docker build -t dtudor200/my-app:2.0.0 .'
               echo 'Build Docker Image'

           stage "Push Image"
               docker.withRegistry(dtudor200/coursework2, docker ) {
               sh 'docker push dtudor200/my-app:2.0.0'
               echo 'Push Image to Docker Hub'
              }             
}

      }
}
