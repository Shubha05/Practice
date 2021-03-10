code_changes = getChanges()
pipeline{
   agent any
   stages{
   stage("code checkout"){
       steps{
       bat "echo hello"
       }
    }
   stage("code build"){
      when{
         expression{
            BRANCH_NAME == 'master' && code_changes == true
       steps{
       bat "echo build"
       }
    }
   stage("unit test"){
       steps{
       bat "echo unit test"
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
