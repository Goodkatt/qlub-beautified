module "secret_key" {
  source = "terraform-aws-modules/secrets-manager/aws"

  # Secret
  name                    = "SECRET_KEYY_onee"
  description             = "Django secret key"
  recovery_window_in_days = 7

  create_random_password           = false
  
  secret_string = jsonencode({
    SECRET_KEY = var.secret_key
  })
  tags = {
    Environment = "Development"
    Project     = "Qlub"
  }
}

module "debug" {
  source = "terraform-aws-modules/secrets-manager/aws"

  # Secret
  name                    = "is_debug_onee"
  description             = "debugging"
  recovery_window_in_days = 7

  create_random_password           = false
  
  secret_string = jsonencode({
    DEBUG = var.debug
  })
  tags = {
    Environment = "Development"
    Project     = "Qlub"
  }
}

module "databasename" {
  source = "terraform-aws-modules/secrets-manager/aws"

  # Secret
  name                    = "is_database_name_onee"
  description             = "DB NAME"
  recovery_window_in_days = 7

  create_random_password           = false
  
  secret_string = jsonencode({
    DATABASE_NAME = var.database_name
  })
  tags = {
    Environment = "Development"
    Project     = "Qlub"
  }
}
module "databaseuser" {
  source = "terraform-aws-modules/secrets-manager/aws"

  # Secret
  name                    = "is_database_user_onee"
  description             = "DB USER"
  recovery_window_in_days = 7

  create_random_password           = false
  
  secret_string = jsonencode({
    DATABASE_USER = var.database_user
  })
  tags = {
    Environment = "Development"
    Project     = "Qlub"
  }
}
module "databaspassword" {
  source = "terraform-aws-modules/secrets-manager/aws"

  # Secret
  name                    = "is_database_password_onee"
  description             = "DB PASSWORD"
  recovery_window_in_days = 7

  create_random_password           = false
  
  secret_string = jsonencode({
    DATABASE_PASSWORD = var.database_password
  })
  tags = {
    Environment = "Development"
    Project     = "Qlub"
  }
}
module "databashost" {
  source = "terraform-aws-modules/secrets-manager/aws"

  # Secret
  name                    = "is_database_host_onee"
  description             = "DB HOST"
  recovery_window_in_days = 7

  create_random_password           = false
  
  secret_string = jsonencode({
    DATABASE_HOST = var.database_host
  })
  tags = {
    Environment = "Development"
    Project     = "Qlub"
  }
}
module "databasport" {
  source = "terraform-aws-modules/secrets-manager/aws"

  # Secret
  name                    = "is_database_port_onee"
  description             = "DB PORT"
  recovery_window_in_days = 7

  create_random_password           = false
  
  secret_string = jsonencode({
    DATABASE_PORT = var.database_port
  })
  tags = {
    Environment = "Development"
    Project     = "Qlub"
  }
}