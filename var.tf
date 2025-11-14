
variable "instances" {
  type = list(object({
    name          = string
    instance_type = string
    ssh_key       = string
    image_id      = string
    role_name     = string
  }))
  default = [
    {
      name          = "worker-node"
      role_name     = "worker"
      instance_type = "t3.micro"
      ssh_key       = "aws"
      image_id      = "ami-0a716d3f3b16d290c"
    },
    {
      name          = "db-node"
      role_name     = "db"
      instance_type = "t3.small"
      ssh_key       = "aws"
      image_id      = "ami-0a716d3f3b16d290c"
    },
    {
      name          = "docker-registry"
      role_name     = "registry"
      instance_type = "t3.micro"
      ssh_key       = "aws"
      image_id      = "ami-0a716d3f3b16d290c"
    }
  ]
}

variable "project_name" {
  type    = string
  default = "crime-rate"
}
variable "vpc_name" {
  type    = string
  default = "crime_vps"
}
variable "vpc_id" {
  type    = string
  default = "vpc-0c1bf9f07f4f1bd36"
}
