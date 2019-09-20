// this is strings examples
variable "firststring" {
	type = "string"
  default = "this is my first string"
}

variable "multilnestring" {
  type = "string"
  default = <<EOH
  This is a multiline string
  newline
  EOH
}

output "myfirstoutput" {
  value = "${var.firststring}"
}


output "mysecondoutput" {
  value = "${var.multilnestring}"
}


// This is map example

variable "mapexample" {
  type = "map"
  default = {
    "useast" = "vm1"
    "uswest" = "vm2"
  }
}

output "mapoutput" {
  value = "${var.mapexample["uswest"]}"
}

// This is the array/lists

variable "mysecuritygrouplist" {
  type = "list"
  default = ["sg1","sg2","sg3","sg4"]
}

output "listouptut_securityGroup" {
  value = "${var.mysecuritygrouplist}"
}


// This is bolean example and do not need to specity the type

variable "firstBolean" {
  default = false
}

output "boleanOutput" {
  value = "${var.firstBolean}"
}


// this is input variable and not print the sensitive information

variable "name" {}

output "YourName" {
  sensitive = true
  value = "${var.name}"
}