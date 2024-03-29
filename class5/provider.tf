provider "aws" {
  region = "${var.region}"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  availability_zone = "${var.region}a"
  ami               = "${data.aws_ami.ubuntu.id}"
  instance_type     = "t2.micro"
  tags              = "${var.tags}"
}

# resource "aws_route53_record" "www" {
#   zone_id = aws_route53_zone.primary.zone_id
#   name    = "www.example.com"
#   type    = "A"
#   ttl     = "300"
#   records = [aws_eip.lb.public_ip]
# }

resource "aws_instance" "web2" {
  availability_zone = "${var.region}a"
  ami               = "${data.aws_ami.ubuntu.id}"
  instance_type     = "t2.micro"
  tags              = "${var.tags}"
}

resource "aws_ebs_volume" "example" {
  availability_zone = "${var.region}a"
  size              = 40
  tags              = "${var.tags}"
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = "${aws_ebs_volume.example.id}"
  instance_id = "${aws_instance.web2.id}"
}
