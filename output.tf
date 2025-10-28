output "instance_info" {
  description = "Адресcа машин"
  value = [
    for vm in aws_instance.servers : {
      name = vm.tags.Name,
      dns  = vm.public_dns,
      ip   = vm.public_ip
    }
  ]
}
