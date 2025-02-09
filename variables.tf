variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleAppServerInstance"
}


variable "instance_id" {
  description = "Instance ID"
  type        = string
}

variable "instance_public_ip" {
  description = "public IP"
  type        = string
}
