terraform {
  backend "s3" {
    bucket = "terraform-state-april-class-beto"
    key    = "jenkins/us-east-1/tools/virginia/asg.tfstate"
    region = "us-east-1"
  }
}
