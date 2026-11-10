

variable "instance_type" {
  type = string
  default = "t3.micro"
  description = "instance type of ec2"




validation {
  condition = contains(["t3.micro", "t3.small", "t3.medium", "t3.large"], var.instance_type)
  error_message = "instance must be t3 family"
  }
}

variable "ec2_tags" {
  type = map 
  default = {
    Name = "roboshop-remote-state-demo"
    Environment = "dev"
    Terraform =  "true"
    protocolroject = "roboshop"
    Component = "mongodb"
  }
}

variable "cidr" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "from_port" {
  type = number
  default = 0
  
}