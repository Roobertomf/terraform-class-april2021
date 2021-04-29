region = "eu-west-2"
subnets         = [
    "subnet-05390e7dcb90a8384",
    "subnet-0c6d0adb47b1c4e20", 
    "subnet-00635fdb802fe3bd7"
]
vpc_id        = "vpc-06ab6af6cac5569a1"
instance_type = "m4.large"
asg_max_size  = 5

tags = {
    Env         = "Development"
    Billing     = "SMA"
    Application = "Artemis"
    Region      = "us-east-1"
    Created_by  = "me"
    Team        = "DevOps"
    Mnaged_by   = "infraTeam"
    Quarter     = 3
}
environment        = "london"
s3_bucket          = "terraform-state-april-class-beto"
s3_folder_project  = "eks"
s3_folder_region   = "us-east-1"
s3_folder_type     = "tools"
s3_tfstate_file    = "eks.tfstate"
