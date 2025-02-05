resource "aws_vpc_peering_connection" "main" {
  peer_vpc_id   = var.peer_vpc_id
  vpc_id        = local.default_vpc_id
  auto_accept = true

  tags = merge (
    var.tags,
    {
        Name = "${var.project_name}-${var.environment}-${var.connection_name}"
    }
  )
}