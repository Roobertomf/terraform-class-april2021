terraform {
    backend "s3" {
        bucket = "terraform-state-april-class-beto"
        key = "eks/us-east-1/tools/virginia/eks.tfstate"
        region = "us-east-1"
    }
}
