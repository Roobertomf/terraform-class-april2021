data "aws_ami" "image" {
  most_recent = true

  # filter {
  #   name   = "name"
  #   values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  # }

  owners = ["${var.image_owner}"]

  # output "UBUNTU_AMI_ID" {
  #   value = "${data.aws_ami.image.id}"
  # }
}
