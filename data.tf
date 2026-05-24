data "terraform_remote_state" "remote_data" {
  backend = "remote"
  config = {
    bucket = var.state_bucket
    key    = var.state_key
    region = var.aws_region
  }
}

