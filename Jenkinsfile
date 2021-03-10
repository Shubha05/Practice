pipeline{
   agent any
   tools{
      maven 'Maven'
   }
   stages{
   stage("code checkout"){
       steps{
       bat "echo hello"
       }
    }
   stage("code build"){
      when{
         expression{
            BRANCH_NAME == 'master' 
       steps{
       bat "mvn clean"
       }
    }
   stage("unit test"){
       steps{
       bat "mvn test"
       }
    }
   }
   post{
       always{
       }
      success{
         bat "echo success"
      }
  }
}
