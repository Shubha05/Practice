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
           bat "echo always"
       }
      success{
         bat "echo success"
      }
      failure{
         bat "echo failure"
      }
  }
}
