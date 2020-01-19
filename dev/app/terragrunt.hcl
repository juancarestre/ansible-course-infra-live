include {
  path = find_in_parent_folders()
}
inputs = {
  group = "app"
}

terraform {
  source = "git@github.com:juancarestre/ansible-course-infra-modules.git//app?ref=v0.0.1"
}