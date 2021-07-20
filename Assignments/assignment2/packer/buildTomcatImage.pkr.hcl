packer {
  required_plugins {
    amazon = {
      version = ">= 0.0.2"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "ubuntu" {
  ami_name      = "learn-packer-linux-aws"
  instance_type = "t2.micro"
  region        = "ap-south-1"
  source_ami    = "ami-0c1a7f89451184c8b"
  ssh_username  = "ubuntu"
}

build {
  sources = [
    "source.amazon-ebs.ubuntu"
  ]

  provisioner "shell" {
    inline = [
      "echo Installing Tomcat"
    ]
  }

  provisioner "ansible" {
    playbook_file = "../ansible/InstallBinaries/installBinaries.yaml"
    roles_path    = "../ansible/InstallBinaries/roles/installTomcat"
  }
}
