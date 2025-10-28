terraform {
  backend "s3" {
    bucket       = "crime-bucker"      # Ваше имя bucket
    key          = "terraform.tfstate" # Путь к state файлу
    region       = "eu-north-1"        # Ваш регион
    use_lockfile = true
    encrypt      = true
  }
}
