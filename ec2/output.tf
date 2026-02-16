# priting keypair info
output "key_pair" {
value = data.aws_key_pair.ec2_keypair  
}