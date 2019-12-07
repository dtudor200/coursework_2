node {
      for (i=0; i<2; i++) { 
           stage "Stage #"+i
           print 'Hello, world !'
           if (i==0)
           {
               git url : 'https://github.com/dtudor200/coursework_2.git'
               echo 'Checkout SCM'
           }
           else {
               echo 'Build bit here'

               build 'Static_Code_Test'
               echo 'Static Code Test'
           
              
}

      }
}
