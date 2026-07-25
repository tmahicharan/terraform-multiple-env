variable "ami"{
    type =string
    default ="ami-0220d79f3f480ecf5"
}

variable "project"{
    default= "Roboshop"
}

variable "environment"{
    type= map
    default={
        dev="dev"
        prod="prod"
    }
}


variable "t3"{
    type =map
    default={
        dev="t3.micro"
        prod="t3.small"
    }
}




variable "cidr"{
    type= list
    default= ["0.0.0.0/0"]
}

variable "from_port"{
    type= number
    default= 0
}