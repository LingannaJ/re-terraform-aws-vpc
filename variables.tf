# project related variables
variable "project_name" {
    type = string
  
}

variable "environment" {
    type = string
  
}

variable "common_tags" {
    type = map
  default = {}
}


# vpc variables

variable "vpc_cidr" {
type = string
  default = "10.0.0.0/16"
}


variable "vpc_tags" {
    type = map
    default = {}
  
}

# internet gateway variables

variable "igw_tags" {
    type = map
  default = {}
}


## public subnet variables

variable "public_subnet_cidrs" {
    type = list
  validation {
    condition = length (var.public_subnet_cidrs) == 2
    error_message = "please provide 2 valid public subnet CIDR"
    
  }
}

variable "public_subnets_cidr_tags" {
    type = map
   default = {}  
}


## private subnet variables

variable "private_subnet_cidrs" {
    type = list
  validation {
    condition = length (var.private_subnet_cidrs) == 2
    error_message = "please provide 2 valid private subnet CIDR"
    
  }
}

variable "private_subnets_cidr_tags" {
    type = map
   default = {}  
}

## database subnet variables

variable "database_subnet_cidrs" {
    type = list
  validation {
    condition = length (var.database_subnet_cidrs) == 2
    error_message = "please provide 2 valid database subnet CIDR"
    
  }
}

variable "database_subnets_cidr_tags" {
    type = map
   default = {}  
}

## database subnet group variables
variable "database_subnets_group_tags" {
  type = map
  default = { }
}

### internet gateway variables

variable "nat_gateway_tags" {
    type = map
  default = {}
}


## route table variables

variable "public_route_table_tags" {
  type = map
  default = {}
}

variable "private_route_table_tags" {
  type = map
  default = {}
}


variable "database_route_table_tags" {
  type = map
  default = {}
}

## peering variable

variable "is_peering_required" {
  type = bool
  default = false
  
}

variable "acceptor_vpc_id" {
  type = string
  default = ""
}

variable "vpc_peering_tags" {
  type = map
  default = {}
}