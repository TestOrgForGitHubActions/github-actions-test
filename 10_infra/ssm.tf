# ---------------------------------------------
# SSM Parameter Store
# ---------------------------------------------
resource "aws_ssm_parameter" "host" {
  name  = "/${var.project}/${var.environment}/app/MYSQL_HOST"
  key_id = ""
  description = ""
  allowed_pattern = ""
  type  = "String"
  value = aws_db_instance.mysql_standalone.address
}

resource "aws_ssm_parameter" "port" {
  name  = "/${var.project}/${var.environment}/app/MYSQL_PORT"
  key_id = ""
  description = ""
  allowed_pattern = ""
  type  = "String"
  value = aws_db_instance.mysql_standalone.port
  # value = "3306"
}

resource "aws_ssm_parameter" "database" {
  name  = "/${var.project}/${var.environment}/app/MYSQL_DATABASE"
  key_id = ""
  description = ""
  allowed_pattern = ""
  type  = "String"
  value = aws_db_instance.mysql_standalone.db_name
  # value = "tastylog"
}

resource "aws_ssm_parameter" "username" {
  name  = "/${var.project}/${var.environment}/app/MYSQL_USERNAME"
  type  = "SecureString"
  value = var.username
}

resource "aws_ssm_parameter" "password" {
  name  = "/${var.project}/${var.environment}/app/MYSQL_PASSWORD"
  type  = "SecureString"
  value = var.password
}

