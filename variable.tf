# Default
variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
}

# Mandatory
variable "sg_id" {

}

# Default and Selection
variable "instance_type" {
    default = "t2.micro"
    validation {
        condition = contains(["t2.micro", "t3.micro", "t3.large"], var.instance_type)
        error_message = "valid instance types are: t2.micro, t3.micro, t3.large"
    }
}

variable tags {
    default = {}
}