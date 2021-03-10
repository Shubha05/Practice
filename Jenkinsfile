pipeline{
   agent any
   tools{
      maven 'Maven'
   }
   stages{
   stage("code checkout"){
       steps{
           checkout scm
       }
    }
   stage("code build"){
       steps{
       bat "mvn install"
       }
    }
   stage("unit test"){
       steps{
       bat "mvn test"
       }
   }
   stage("Sonar Analysis"){
       steps
       {
         withSonarQubeEnv("Test_Sonar")
          {
             bat "mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.2:sonar"
          }
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
