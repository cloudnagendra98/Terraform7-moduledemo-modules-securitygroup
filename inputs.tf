variable "securitygroup_config" {
  type = object({
    name = string
    description= string 
    vpc_id = string
    rules= list(object({
      type = string
        from_port = number
        to_port = number
        protocol = string
        cidr_block = string 
      }))
    })
  default = {
    name        = "sg"
    description = "This is security group config"
    vpc_id = "vpc-0c838dce1e3d59b9c"
    rules = [{
      type       = "ingress"
      protocol   = "tcp"
      from_port  = 8080
      to_port    = 8080
      cidr_block = "0.0.0.0/0"
    },
    {
      type       = "ingress"
      protocol   = "tcp"
      from_port  = 22
      to_port    = 22
      cidr_block = "0.0.0.0/0"
    },
    {
      type       = "ingress"
      protocol   = "tcp"
      from_port  = 5001
      to_port    = 5001
      cidr_block = "0.0.0.0/0"
    },
    {
      type       = "egress"
      protocol   = "-1"
      from_port  = 0
      to_port    = 65535
      cidr_block = "0.0.0.0/0"
    }]
  }

}