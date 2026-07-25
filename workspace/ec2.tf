resource "aws_instance" "instance"{
    ami= var.ami
    instance_type = lookup(var.t3,terraform.workspace)
    vpc_security_group_ids=[aws_security_group.allow-all.id]
    tags= merge(
        local.common_tags,
        {
            Name= "${local.common_name}-multiple_env"
        }

    )
}

resource "aws_security_group" "allow-all"{
    name= "${local.common_name}-multiple_env"

    egress {
        from_port   = var.from_port
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = var.cidr

    }

     ingress {
        from_port   = var.from_port
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = var.cidr

    }
    
    tags= merge(
        local.common_tags,
        {
            Name= "${local.common_name}-multiple_env"
        }

    )

}