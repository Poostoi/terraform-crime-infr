
variable "instances" {
  type = list(object({
    name          = string
    instance_type = string
    ssh_key       = string
    image_id      = string
  }))
  default = [
    {
      name          = "worker-node"
      instance_type = "t3.micro"
      ssh_key       = "aws"
      image_id      = "ami-0a716d3f3b16d290c"
    },
    {
      name          = "db-node"
      instance_type = "t3.small"
      ssh_key       = "aws"
      image_id      = "ami-0a716d3f3b16d290c"
    },
    {
      name          = "docker-registry"
      instance_type = "t3.micro"
      ssh_key       = "aws"
      image_id      = "ami-0a716d3f3b16d290c"
    }
  ]
}

variable "vpc_name" {
  type    = string
  default = "crime_vps"
}
variable "vpc_id" {
  type    = string
  default = "vpc-0c1bf9f07f4f1bd36"
}
