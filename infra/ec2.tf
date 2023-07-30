
resource "aws_instance" "github" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.nano"

  tags = {
    Name = "Github-action"
  }
}