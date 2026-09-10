resource "random_pet" "mypet" {
  prefix    = "MR"
  separator = "."
  length    = 1
}

resource "local_file" "pet" {
  filename = var.filename
  content  = "My pet is ${random_pet.mypet.id}"

  lifecycle {
    create_before_destroy = true
  }
}