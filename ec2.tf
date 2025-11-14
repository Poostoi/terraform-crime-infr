resource "aws_instance" "servers" {
  for_each      = { for idx, vm in var.instances : vm.name => vm }
  ami           = each.value.image_id
  instance_type = each.value.instance_type
  key_name      = each.value.ssh_key

  vpc_security_group_ids = [aws_security_group.security_crime_group.id]


  tags = {
    Name    = each.value.name
    Project = var.project_name
    Role    = each.value.role_name
  }
}
