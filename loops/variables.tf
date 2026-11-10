variable "environment" {
  default = "dev"
}

variable "project" {
  default ="roboshop"
}

variable "ami_id" {
  type = string
  default = "ami-0055977a6e828a4f4"
  description = "AMI ID of the instance"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
  description = "instance type of ec2"




validation {
  condition = contains(["t3.micro", "t3.small", "t3.medium", "t3.large"], var.instance_type)
  error_message = "instance must be t3 family"
  }
}


variable "instances" {
    type = list 
    default = ["mongodb", "redis", "frontend"] #"mysql", "rabbitmq", "catalogue", "user", "cart", "shipping","payment", "frontend"]
  
}

variable "zone" {
  default = "Z05446843FCZ0RI2Z1CIL"
}

variable "domain_name" {
  default = "pradeepverse.online"
}