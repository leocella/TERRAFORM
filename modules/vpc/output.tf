output "vpc_id" {
    value = aws_vpc.leocella_vpc.id
}
output "subnet_priv01" {
    value = aws_subnet.subnet_priv01.id
}
output "subnet_priv02" {
    value = aws_subnet.subnet_priv02.id
}
output "subnet_pub01" {
    value = aws_subnet.subnet_pub01.id
}
output "subnet_pub02" {
    value = aws_subnet.subnet_pub02.id
}