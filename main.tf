resource "local_file" "sample" {
  filename = "sample.txt"
  content  = "Terraform executed successfully through Jenkins!"
}