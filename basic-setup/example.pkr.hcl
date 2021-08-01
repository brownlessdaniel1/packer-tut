source "amazon-ebs" "my-first-builder" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region

  ami_name = var.ami_name

  source_ami    = var.source_ami
  instance_type = var.instance_type
  ssh_username  = var.ssh_username
}

build {
  sources = ["amazon-ebs.my-first-builder"]
}
