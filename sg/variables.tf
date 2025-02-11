variable "project_name" {

}

variable "environment" {

}

variable "sg_name" {

}
variable "vpc_id" {

}

variable "common_tags" {
    default = {
        Terraform = true
    }
}

variable "sg_tags" {
    default = {}
}