variable "ami"{
    type =string
    default ="ami-0220d79f3f480ecf5"
}

variable "project"{
    default= "Roboshop"
}

variable "environment"{
    type= string
}


variable "t3"{
    type =string
}




variable "cidr"{
    type= list
    default= ["0.0.0.0/0"]
}

variable "from_port"{
    type= number
    default= 0
}