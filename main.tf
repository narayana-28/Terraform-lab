resource "local_file" "pet" {
  filename = "pets.txt"
  content  = "we love pets!"
}
resource "random_pet" "mypet" {
  prefix    = "MR"
  separator = "."
  length    = "2"
}

data "aws_caller_identity" "current" {}