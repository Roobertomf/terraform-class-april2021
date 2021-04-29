terraform {
  required_version = "0.11.14"

  backend "s3" {
    bucket = "terraform-state-april-class-beto"
    key    = "jenkins/us-east-1/tools/virginia/jenkins.tfstate"
    region = "us-east-1"

    #dynamodb_table = "prod"                                              #ist used to collaborative teams if one team is applying changes the other team will need to wait 
  }
}
