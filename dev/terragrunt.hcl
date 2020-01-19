remote_state {
  backend = "s3"
  config = {
    bucket = "juancrestre-terraform-states"

    key = "dev/${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}

terraform {
  extra_arguments "vars" {
    commands = get_terraform_commands_that_need_vars()

    arguments = [
      "-var-file=../../../../../../config/dev-vars.tfvars",
    ]
  }
}

inputs = {
  region = "us-east-1"
}