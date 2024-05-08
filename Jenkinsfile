pipeline{
  agent any
  stages{
    stage("Maven Build"){
      when {
        branch "develop"
      }
      steps{
        echo "mvn clean package"
      }
    }
    stage("Sonar Analysis"){
      when {
        branch "develop"
      }
      steps{
        echo "Static code analysis"
      }
    }
    stage("Deploy to Dev"){
      when {
        branch "develop"
      }
      steps{
        echo "Deploying to dev"
      }
    }
    stage("Deploy to Test"){
      when {
        branch "test"
      }
      steps{
        echo "Deploying to Test"
      }
    }
    stage("Deploy to Prod"){
      when {
        branch "main"
      }
      steps{
        echo "Deploying to Prod"
      }
    }
  }
}
