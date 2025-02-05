# output "az_info" {
#     value = data.aws_availability_zones.available
# }

output "vpc_info" {
    value = aws_vpc.main
}
