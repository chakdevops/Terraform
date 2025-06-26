# resource "aws_instance" "web" {
#   ami           = var.ami_id #devops-practice
#   instance_type = var.instance_name == "MongoDB" ? "t3.small" : "t2.micro"
# }
# resource "aws_instance" "example" {
#   instance_type = var.environment == "prod" ? "t3.medium" : "t2.micro"
#   ami           = var.ami_id #devops-practice
# }

 

# Create multiple tags using a for loop
# output "tag_map" {
#   value = {
#     for name in var.owners : name => "Team-${name}"
#   }
# }

# count demo (basic repetition)
# resource "aws_instance" "example" {
#   count         = var.instance_count
#   ami           = var.ami_id
#   instance_type = "t2.micro"

#   tags = {
#     Name = "Instance-${count.index}"
#   }
# }


# Use for_each to loop through a map
resource "aws_instance" "example" {
  for_each      = var.instance_names
  ami           = var.ami_id
  instance_type = each.value

  tags = {
    Name = each.key
  }
}

