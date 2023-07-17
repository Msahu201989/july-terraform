resource "local_file" "foo" {
  content = "foo!"
  filename = "/temp/foo.bar"
}