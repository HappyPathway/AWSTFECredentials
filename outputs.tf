output "aws_access_key" {
  value = "${data.template_file.aws_access_key.rendered}"
}

output "aws_secret_key" {
  value = "${data.template_file.aws_secret_key.rendered}"
}
