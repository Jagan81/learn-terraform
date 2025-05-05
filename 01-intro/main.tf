provider "local" {}

resource "local_file" "foo" {
  content = "Hello world"
  filename = "/tmp/foo.bar"
}

# Normal Variables

variable "x" {
  default = 10
}


## Print Variable on output
output "x" {
  value = var.x
}



# if our value is just variable then var.x, if it is combination of strings then "$(var.x)
output "x1" {
  value = "Value of x - ${var.x}"
}