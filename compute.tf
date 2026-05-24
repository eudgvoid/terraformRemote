resource "aws_instance" "this_instance" {
  ami           = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
  instance_type = "t3.micro"

  vpc_id                      = data.terraform_remote_state.base_infra.outputs.vpc_id
  subnet_id                   = data.terraform_remote_state.base_infra.outputs.public_subnet_id
  associate_public_ip_address = true
  vpc_security_group_ids      = [data.terraform_remote_state.base_infra.outputs.security_group_id]


  tags = {
    Name      = ec2_example
    Terraform = true
    Project   = var.project_id
  }
}
