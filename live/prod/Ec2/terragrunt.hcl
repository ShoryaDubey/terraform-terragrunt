include {
  path = find_in_parent_folders("root.hcl")
}

terraform {
    source = "../../../module/Ec2"
}

locals {
  env_vars = read_terragrunt_config("env.hcl")
}

inputs =  {
    ami = "ami-020cba7c55df1f615"
    instance_type = local.env_vars.locals.instance_type
    env = local.env_vars.locals.environment
}
