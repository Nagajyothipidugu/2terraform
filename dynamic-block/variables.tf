variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "AMI ID of joindevops RHEL"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ec2_tags" {
  type = map(string)
  default = {
    Name    = "roboshop"
    purpose = "variables-demo"
  }
}

variable "sg_name" {
  type    = string
  default = "allow_all"
}
variable "sg_description" {
  type    = string
  default = "allowing all ports from internet"
}
variable "from_port" {
  type    = number
  default = 0
}
variable "to_port" {
  type    = number
  default = 0
}
variable "cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}
variable "sg_tags" {
  default = {
    Name = "allow_all"
  }
}
variable "environment" {
  default = "dev"
}

variable "instances" {
  default = ["mongodb", "redis", "mysql", "rabbitmq"]
}

variable "zone_id" {
  default = "Z00583343821Q6B1A8IK6"
}
variable "domain_name" {
  default = "devaws46.online"
}

variable "ingress_ports" {
  default = [ #list(map)
    {
      from_port = 22
      to_port   = 22
    },
    {
      from_port = 80
      to_port   = 80
    },
    {
      from_port = 8080
      to_port   = 8080
    }
  ]
}

variable "egress_ports" {
  default = [
    {
      from_port = 80
      to_port   = 80
    },
    {
      from_port = 8080
      to_port   = 8080
    },
    {
      from_port = 3603
      to_port   = 3603
    }
  ]
}


