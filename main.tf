data "template_file" "aws_access_key" {
  template = "$${aws_key}"

  vars {
    aws_key = "${var.aws_key}"
  }
}

data "template_file" "aws_secret_key" {
  template = "$${aws_secret}"

  vars {
    aws_secret = "${var.aws_secret}"
  }
}

resource "null_resource" "dump_vars" {
  triggers {
    keys = "${join(",", data.template_file.aws_access_key)}"
  }

  provisioner "local-exec" {
    command = "echo ${data.template_file.aws_access_key.rendered}"
  }
}
