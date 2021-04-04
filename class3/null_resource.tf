resource "null_resource" "mine" {
  triggers = {
    always_run = "${timestamp()}"
  }

  depends_on = ["aws_instance.web"]

  provisioner "remote-exec" {
    connection {
      host        = "${aws_instance.web.public_ip}"
      type        = "ssh"
      user        = "centos"
      private_key = "${file("~/.ssh/id_rsa")}"
    }

    inline = [
      "sudo yum install httpd -y",
      "sudo yum install -y epel-release -y ",
      "sudo systemctl start httpd",
      "sudo systemctl enable httpd",
      "sudo yum install telnet -y",
    ]
  }
}
