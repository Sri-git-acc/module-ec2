resource "aws_security_group" "main" {
  name        = local.sg_final_name
  vpc_id      = var.vpc_id

  tags = merge(
    var.common_tags,
    var.sg_tags,
    {
        Name = local.sg_final_name
    }
  )
}