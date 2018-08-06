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
