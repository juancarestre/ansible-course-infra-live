include {
  path = find_in_parent_folders()
}

inputs = {
  group = "control"
}

terraform {
  source = "git@github.com:juancarestre/ansible-course-infra-modules.git//control?ref=v0.0.2"
}