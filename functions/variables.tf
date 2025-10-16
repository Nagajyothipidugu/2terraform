variable "ami_id" {
  type    = string
  default = "ami-09c813fb71547fc4f"
  description = "AMI ID of joindevops RHEL"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "ec2_tags" { 
    type = map(string)
    default = {
        Name = "roboshop"
        purpose = "variables-demo"
    }
}

variable "sg_name" {
    type = string 
    default =  "allow_all"
}
variable "sg_description" { 
    type= string 
    default = "allowing all ports from internet"
}
variable "from_port" {
    type= number
    default = 0
}
variable "to_port"{
   type= number 
   default = 0
}
variable "cidr_blocks"  {
    type= list(string) 
    default= ["0.0.0.0/0"]
}
variable "sg_tags" {
    default= {
        Name = "allow_all"
    }
}
variable "environment" {
    default = "dev"
} 

variable "instances" {
    default= ["mongodb" ,"redis" ,"mysql", "rabbitmq"]
}

variable "zone_id" {
    default = "Z00583343821Q6B1A8IK6"
}
variable "domain_name" {
    default="devaws46.online"
}

variable "common_tags" {
    default = {
        project ="Roboshop"
        terraform = true
    }
}
