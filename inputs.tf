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
    description = "This is security group config"

}