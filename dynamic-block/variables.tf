variable "ingress-rules"  {
    default = {
        ssh = {
            port = 22
            cidr_blocks = ["0.0.0.0/0"]
            description = "open port 22 from all ssh access"
        },
        mysql = {
            port = 3306
            cidr_blocks = ["0.0.0.0/0"]
            description = "open port 22 from all db access"

    }

     http = {
            port = 80
            cidr_blocks = ["0.0.0.0/0"]
            description = "open port 80 from all web access"
     }
     tcp = {
            port = 8081
            cidr_blocks = ["0.0.0.0/0"]
            description = "open port 8081 from all custom protocol"}
}
}